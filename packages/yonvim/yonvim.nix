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
    };
  };
  yonvim-bin = writeShellScriptBin "yonvim" ''
    export PATH="${lib.makeBinPath runtimeDeps}''${PATH:+:$PATH}"

    export NVIM_APPNAME=yonvim

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
