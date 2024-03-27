{ lib
, fd
, neovim-unwrapped
, ripgrep
, runCommandLocal
, wrapNeovimUnstable
, yonvim-lua
, yonvimPlugins
}:

let
  version = import ./version.nix;

  runtimeDeps = [
    # nvim-telescope
    fd
    ripgrep
  ];

  neovim-yonvim = wrapNeovimUnstable neovim-unwrapped {
    extraName = "-yonvim";
    wrapperArgs = [ "--prefix" "PATH" ":" (lib.makeBinPath runtimeDeps) ]
      ++ [ "--set" "NVIM_APPNAME" "yonvim" ];
    wrapRc = false;
    packpathDirs.myNeovimPackages.start = [
      yonvim-lua
      yonvimPlugins.lazy-nvim
      yonvimPlugins.structlog-nvim
    ] ++ yonvim-lua.treesitter-grammars;
  };
in
runCommandLocal "yonvim-${version}"
{
  buildInputs = [ neovim-yonvim ];

  meta = with lib; {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
} ''
  install -Dm755 ${neovim-yonvim}/bin/nvim $out/bin/yonvim
''
