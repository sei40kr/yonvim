{ neovim, vimPlugins, yonvim-lua }:

neovim.override {
  configure.packages.myVimPackage = {
    start = [
      yonvim-lua
      vimPlugins.packer-nvim
      vimPlugins.which-key-nvim
    ];
  };
}
