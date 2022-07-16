{ neovim
, makeWrapper
, symlinkJoin
, vimPlugins
, writeShellScriptBin
, yonvim-lua
}:

let
  version = import ./version.nix;

  neovim-configured = import ./neovim-configured.nix {
    inherit neovim vimPlugins yonvim-lua;
  };
  yonvim-bin = writeShellScriptBin "yvim" ''
    export YVIM_CACHE_DIR="''${YVIM_CACHE_DIR:-''${XDG_CACHE_HOME:-''${HOME}/.cache}/yvim}"
    export YVIM_CONFIG_DIR="''${YVIM_CONFIG_DIR:-''${XDG_CONFIG_HOME:-''${HOME}/.config}/yvim}"
    export YVIM_RUNTIME_DIR="''${YVIM_RUNTIME_DIR:-''${XDG_DATA_HOME:-''${HOME}/.local/share}/yvim}"
 
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
