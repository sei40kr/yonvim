{ lib, vimPlugins, vimUtils }:

vimUtils.buildVimPluginFrom2Nix {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  meta = with lib; {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
