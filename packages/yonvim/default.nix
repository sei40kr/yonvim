{ neovim, yonvim-lua }:

neovim.override {
  configure.customRC = ''
    lua vim.opt.packpath:append("${yonvim-lua}")
  '';
}
