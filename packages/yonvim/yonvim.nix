{ lib
, fd
, neovim-unwrapped
, python3
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
    manifestRc = "";
    python3Env = python3.withPackages(ps: with ps; [
      pynvim
      # Required by molten-nvim
      cairosvg
      jupyter-client
      nbformat
      pillow
      plotly
      pnglatex
      pyperclip
    ]);
    wrapRc = false;
    packpathDirs.myNeovimPackages.start = [
      yonvim-lua
      yonvimPlugins.lazy-nvim
      yonvimPlugins.structlog-nvim
      # List remote plugins here to ensure the remote plugin manifest at the
      # build time
      yonvimPlugins.molten-nvim
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
