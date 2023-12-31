{ vimUtils, yonvim-all-plugin-specs }:

vimUtils.buildVimPlugin {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  postFixup = ''
    # NOTE: Somehow nvim-cmp cannot be found if we rename this to
    #  `all-plugin-specs.lua`.
    cp -f ${yonvim-all-plugin-specs} $out/lua/yvim/plugins/plugin-specs.lua
  '';

  postInstall = ''
    rm -rf $out/packages $out/flake.*
  '';

  passthru.treesitter-grammars = yonvim-all-plugin-specs.treesitter-grammars;
}
