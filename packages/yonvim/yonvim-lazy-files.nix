{ lib
, git
, neovim
, runCommandLocal
, yonvim-lua
, yonvimPlugins
}:

runCommandLocal "yonvim-lazy-files"
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

  mkdir -p $out/share/lazy
  export LAZY_LOCKFILE=$out/share/lazy/lazy-lock.json
  export LAZY_README=$out/share/lazy/readme

  nvim -V1 -n -i NONE --headless \
       +'require("yvim").setup {}' \
       +'Lazy! sync' \
       +'lua require("lazy.help").update()' \
       +qa

  rm -rf $HOME $XDG_CACHE_HOME $XDG_DATA_HOME $XDG_STATE_HOME
''
