{ lib
, curl
, fd
, gnutar
, gzip
, neovim
, makeWrapper
, ripgrep
, symlinkJoin
, unzip
, vimPlugins
, wget
, writeShellScriptBin
, yonvim-lazy-files
, yonvim-lua
, yonvimPlugins
}:

let
  version = import ./version.nix;

  runtimeDeps = [
    # mason.nvim
    curl
    gnutar
    gzip
    unzip
    wget

    # nvim-telescope
    fd
    ripgrep
  ];

  neovim-configured = neovim.override {
    configure = {
      packages.myVimPackage.start = [
        yonvim-lua
        yonvimPlugins.lazy-nvim_readOnly
        yonvimPlugins.structlog-nvim
      ] ++ yonvim-lua.tree-sitter-grammars;
      customRC = ''
        lua <<EOF
          local stdpath = vim.fn.stdpath
          vim.fn.stdpath = function(what)
            if what == "cache" then
              return os.getenv("XDG_CACHE_HOME") .. "/yonvim"
            elseif what == "config" then
              return os.getenv("XDG_CONFIG_HOME") .. "/yonvim"
            elseif what == "data" then
              return os.getenv("XDG_DATA_HOME") .. "/yonvim"
            elseif what == "log" or what == "state" then
              return os.getenv("XDG_STATE_HOME") .. "/yonvim"
            else
              return stdpath(name)
            end
          end
        EOF
      '';
    };
  };
  yonvim-bin = writeShellScriptBin "yonvim" ''
    export PATH="${lib.makeBinPath runtimeDeps}''${PATH:+:$PATH}"

    export LAZY_LOCKFILE=${yonvim-lazy-files}/share/lazy/lazy-lock.json
    export LAZY_CACHE=${yonvim-lazy-files}/share/lazy/luac
    export LAZY_README=${yonvim-lazy-files}/share/lazy/readme

    exec ${neovim-configured}/bin/nvim "$@"
  '';
in
symlinkJoin {
  name = "yonvim-${version}";

  paths = [ neovim-configured ];

  nativeBuildInputs = [ makeWrapper ];

  postBuild = ''
    rm $out/bin/nvim
    cp ${yonvim-bin}/bin/yonvim $out/bin
  '';
}
