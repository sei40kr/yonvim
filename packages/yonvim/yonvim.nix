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

    # nvim-telescope
    fd
    ripgrep
  ];

  neovim_packBuilder = neovim.override {
    configure.packages.myVimPackage.start = [
      yonvim-lua
      yonvimPlugins.packer-nvim
    ];
  };
  pack = runCommandLocal "yonvim-pack-${version}"
    {
      buildInputs = [
        neovim_packBuilder
        # Supress warning at gitsigns setup
        git
      ];
    } ''
    mkdir -p $out/pack

    export XDG_CACHE_HOME=$(mktemp -d)
    export XDG_DATA_HOME=$(mktemp -d)
    export YVIM_PACKER_PACKAGE_ROOT=$out/pack
    export YVIM_PACKER_COMPILE_PATH=$out/pack/packer/start/packer_compiled/lua/packer_compiled.lua

    nvim --headless \
         +"set packpath^=$out" \
         +'au User PackerComplete qa' \
         +PackerSync

    rm -r $XDG_CACHE_HOME $XDG_DATA_HOME
  '';

  neovim_configured = neovim.override {
    configure = {
      customRC = ''
        set packpath^=${pack}
      '';
      packages.myVimPackage.start = [
        yonvim-lua
        yonvimPlugins.packer-nvim
      ];
    };
  };
  yonvim-bin = writeShellScriptBin "yvim" ''
    export PATH="${lib.makeBinPath runtimeDeps}''${PATH:+:$PATH}"
    export YVIM_CACHE_DIR="''${YVIM_CACHE_DIR:-''${XDG_CACHE_HOME:-''${HOME}/.cache}/yvim}"
    export YVIM_CONFIG_DIR="''${YVIM_CONFIG_DIR:-''${XDG_CONFIG_HOME:-''${HOME}/.config}/yvim}"
    export YVIM_RUNTIME_DIR="''${YVIM_RUNTIME_DIR:-''${XDG_DATA_HOME:-''${HOME}/.local/share}/yvim}"
 
    exec ${neovim_configured}/bin/nvim "$@"
  '';
in
symlinkJoin {
  name = "yonvim-${version}";

  paths = [ neovim_configured pack ];

  nativeBuildInputs = [ makeWrapper ];

  postBuild = ''
    rm $out/bin/nvim
    cp ${yonvim-bin}/bin/yvim $out/bin
  '';
}
