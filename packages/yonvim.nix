{ lib, neovim, stdenv, vimPlugins }:

let
  inherit (lib) licenses platforms;
  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps; [
    tree-sitter-bash
    tree-sitter-c
    tree-sitter-c-sharp
    tree-sitter-cpp
    tree-sitter-css
    tree-sitter-elisp
    tree-sitter-go
    tree-sitter-haskell
    tree-sitter-html
    tree-sitter-java
    tree-sitter-javascript
    tree-sitter-jsdoc
    tree-sitter-json
    tree-sitter-julia
    tree-sitter-lua
    tree-sitter-nix
    tree-sitter-norg
    tree-sitter-ocaml
    tree-sitter-php
    tree-sitter-python
    tree-sitter-ruby
    tree-sitter-rust
    tree-sitter-scala
    tree-sitter-swift
    tree-sitter-typescript
    tree-sitter-toml
    tree-sitter-tsx
    tree-sitter-vim
    tree-sitter-yaml
  ]);
  yonvim_lua = stdenv.mkDerivation {
    pname = "yonvim.lua";
    version = "1.0.0";

    src = ../.;

    patchPhase = ''
      substituteInPlace lua/yonvim/plugins/init.lua \
        --subst-var-by nvim_treesitter ${nvim-treesitter.rtp} \
        --subst-var-by nvim_ts_rainbow ${vimPlugins.nvim-ts-rainbow.rtp} \
        --subst-var-by packer_nvim     ${vimPlugins.packer-nvim.rtp} \
        --subst-var-by which_key_nvim  ${vimPlugins.which-key-nvim.rtp}
    '';

    dontBuild = true;

    installPhase = ''
      mkdir -p $out/pack/site/start/yonvim.lua
      cp -r lua plugin $out/pack/site/start/yonvim.lua
    '';

    meta = {
      description = "My personal Neovim distribution";
      license = licenses.mit;
      platforms = platforms.all;
    };
  };
in
neovim.override {
  configure.customRC = ''
    lua vim.opt.packpath:append("${yonvim_lua}")
  '';
}
