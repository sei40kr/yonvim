{ lib
, curl
, fd
, gnutar
, gzip
, neovim-unwrapped
, ripgrep
, runCommandLocal
, symlinkJoin
, unzip
, vimPlugins
, wget
, wrapNeovimUnstable
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

  neovim-yonvim = wrapNeovimUnstable neovim-unwrapped {
    extraName = "-yonvim";
    wrapperArgs = [
      "--prefix" "PATH" ":" (lib.makeBinPath runtimeDeps)
      "--set" "NVIM_APPNAME" "yonvim"
      "--set" "LAZY_LOCKFILE" "${yonvim-lazy-files}/share/lazy/lazy-lock.json"
      "--set" "LAZY_README" "${yonvim-lazy-files}/share/lazy/readme"
    ];
    wrapRc = false;
    packpathDirs.myNeovimPackages.start =  [
      yonvim-lua
      yonvimPlugins.lazy-nvim_readOnly
      yonvimPlugins.structlog-nvim
    ] ++ yonvim-lua.tree-sitter-grammars;
  };
in runCommandLocal "yonvim-${version}" {
  buildInputs = [ neovim-yonvim ];

  meta = with lib; {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
} ''
  install -Dm755 ${neovim-yonvim}/bin/nvim $out/bin/yonvim
''
