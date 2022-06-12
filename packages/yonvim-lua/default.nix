{ lib, stdenv, vimPlugins }:

let
  inherit (lib) escapeShellArgs flatten mapAttrsToList licenses platforms;

  substitutionArgs = flatten (mapAttrsToList
    (name: { repo, rev }:
      [ "--subst-var-by" "${name}_repo" repo "--subst-var-by" "${name}_rev" rev ])
    (builtins.fromJSON (builtins.readFile ./plugins.json)));

  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps;
    [
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
      tree-sitter-markdown
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
in
stdenv.mkDerivation {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  patchPhase = ''
    substituteInPlace lua/yon/plugins/init.lua \
      --subst-var-by packer     ${vimPlugins.packer-nvim.rtp} \
      --subst-var-by treesitter ${nvim-treesitter.rtp} \
      --subst-var-by ts_rainbow ${vimPlugins.nvim-ts-rainbow.rtp} \
      --subst-var-by which_key  ${vimPlugins.which-key-nvim.rtp} \
      ${escapeShellArgs substitutionArgs}
  '';

  dontBuild = true;

  installPhase = ''
    mkdir -p $out/pack/site/start/yonvim.lua
    cp -r lua plugin $out/pack/site/start/yonvim.lua

    mkdir -p $out/pack/site/opt
    ln -s ${vimPlugins.packer-nvim.rtp} $out/pack/site/opt/packer.nvim
    ln -s ${vimPlugins.which-key-nvim.rtp} $out/pack/site/opt/which-key.nvim
  '';

  meta = {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
