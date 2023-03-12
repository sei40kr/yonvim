{ lib
, curl
, fd
, git
, gnutar
, gzip
, neovim
, makeWrapper
, ripgrep
, runCommandLocal
, symlinkJoin
, unzip
, vimPlugins
, wget
, writeShellScriptBin
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

  lazyFiles = runCommandLocal "yonvim-lazy-files"
    {
      buildInputs = [
        (neovim.override {
          configure.packages.myVimPackage.start = [
            yonvim-lua
            yonvimPlugins.lazy-nvim
            yonvimPlugins.structlog-nvim
          ];
        })
        # Supress warning at gitsigns setup
        git
      ];
    } ''
    export HOME=$(mktemp -d)
    export XDG_CACHE_HOME=$(mktemp -d)
    export XDG_DATA_HOME=$(mktemp -d)
    export XDG_STATE_HOME=$(mktemp -d)

    mkdir -p $out/share/nvim/lazy
    export YVIM_LAZY_LOCKFILE=$out/share/nvim/lazy/lazy-lock.json
    export YVIM_LAZY_CACHE_PATH=$out/share/nvim/lazy/cache
    export YVIM_LAZY_README_ROOT=$out/share/nvim/lazy/readme

    nvim -V1 -n -i NONE --headless \
         +'Lazy! sync' \
         +'lua require("lazy.help").update()' \
         +'lua require("lazy.core.cache").autosave()' \
         +qa

    rm -rf $HOME $XDG_CACHE_HOME $XDG_DATA_HOME $XDG_STATE_HOME
  '';

  neovim-configured = neovim.override {
    configure = {
      packages.myVimPackage.start = [
        yonvim-lua
        yonvimPlugins.lazy-nvim
        yonvimPlugins.structlog-nvim
      ];
    };
  };
  yonvim-bin = writeShellScriptBin "yvim" ''
    export PATH="${lib.makeBinPath runtimeDeps}''${PATH:+:$PATH}"

    export YVIM_CACHE_DIR="''${YVIM_CACHE_DIR:-''${XDG_CACHE_HOME:-''${HOME}/.cache}/yvim}"
    export YVIM_CONFIG_DIR="''${YVIM_CONFIG_DIR:-''${XDG_CONFIG_HOME:-''${HOME}/.config}/yvim}"
    export YVIM_RUNTIME_DIR="''${YVIM_RUNTIME_DIR:-''${XDG_DATA_HOME:-''${HOME}/.local/share}/yvim}"

    export YVIM_LAZY_LOCKFILE=${lazyFiles}/share/nvim/lazy/lazy-lock.json
    export YVIM_LAZY_CACHE_PATH=${lazyFiles}/share/nvim/lazy/cache
    export YVIM_LAZY_README_ROOT=${lazyFiles}/share/nvim/lazy/readme

    exec ${neovim-configured}/bin/nvim "$@"
  '';
in
symlinkJoin {
  name = "yonvim-${version}";

  paths = [ neovim-configured ];

  nativeBuildInputs = [ makeWrapper ];

  postBuild = ''
    rm $out/bin/nvim
    cp ${yonvim-bin}/bin/yvim $out/bin
  '';
}
