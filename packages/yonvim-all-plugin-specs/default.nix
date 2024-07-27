{ lib
, fetchFromGitHub
, tree-sitter
, tree-sitter-nu
, vimPlugins
, writeTextFile
, yonvimPlugins
}:

let
  inherit (lib) concatStringsSep filterAttrs isDerivation mapAttrsToList;

  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (grammars:
    with grammars; [
      awk
      c-sharp
      clojure
      cmake
      cpp
      css
      diff
      dockerfile
      # elisp
      fish
      gitattributes
      gitcommit
      go
      gomod
      graphql
      haskell
      hcl
      html
      java
      javascript
      jsdoc
      json
      json5
      julia
      kotlin
      make
      nix
      norg
      ocaml
      query
      pem
      perl
      php
      prisma
      pymanifest
      purescript
      r
      regex
      requirements
      ruby
      rust
      scala
      scss
      solidity
      sql
      ssh_config
      svelte
      # swift
      terraform
      toml
      tsx
      typescript
      verilog
      vue
      yaml
      xml
      zig
    ] ++ [ tree-sitter-nu ]
  );
in
(writeTextFile {
  name = "all-plugin-specs.lua";
  text = ''
    return {
      {
        dir = "${nvim-treesitter.outPath}",
        name = "nvim-treesitter",
        pin = true,
      },
      ${concatStringsSep "\n" (mapAttrsToList (_: { pname, outPath, ... }: ''
        {
          dir = "${outPath}",
          name = "${pname}",
          pin = true,
        },
      '') (filterAttrs (_: v: isDerivation v) yonvimPlugins))}
    }
  '';
}) // { treesitter-grammars = nvim-treesitter.dependencies; }
