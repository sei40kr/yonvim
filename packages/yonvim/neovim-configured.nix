{ neovim, vimPlugins, yonvimPlugins, yonvim-lua }:

let
  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps;
    [
      tree-sitter-bash
      tree-sitter-c
      tree-sitter-c-sharp
      tree-sitter-cpp
      tree-sitter-css
      tree-sitter-dockerfile
      tree-sitter-elisp
      tree-sitter-fish
      tree-sitter-go
      tree-sitter-gomod
      tree-sitter-graphql
      tree-sitter-haskell
      tree-sitter-hcl
      tree-sitter-html
      tree-sitter-java
      tree-sitter-javascript
      tree-sitter-jsdoc
      tree-sitter-json
      tree-sitter-json5
      tree-sitter-julia
      tree-sitter-kotlin
      tree-sitter-lua
      tree-sitter-make
      tree-sitter-markdown
      tree-sitter-nix
      tree-sitter-norg
      tree-sitter-ocaml
      tree-sitter-perl
      tree-sitter-php
      tree-sitter-python
      tree-sitter-r
      tree-sitter-ruby
      tree-sitter-rust
      tree-sitter-scala
      tree-sitter-scss
      tree-sitter-sql
      tree-sitter-svelte
      # tree-sitter-swift
      tree-sitter-toml
      tree-sitter-tsx
      tree-sitter-typescript
      tree-sitter-verilog
      tree-sitter-vim
      tree-sitter-vue
      tree-sitter-yaml
      tree-sitter-zig
    ]);
in
neovim.override {
  configure.packages.myVimPackage = {
    start = [
      yonvim-lua
      nvim-treesitter
    ] ++ (with yonvimPlugins; [
      ## core
      close-buffers-nvim
      nvim-web-devicons
      # TODO defer loading
      open-browser-vim
      # TODO defer loading
      open-browser-github-vim
      plenary-nvim
      project-nvim
      stickybuf-nvim

      ## edit
      editorconfig-nvim
      # TODO defer loading
      hop-nvim
      mini-nvim
      # TODO defer loading
      nvim-autopairs
      nvimacs
      # TODO defer loading
      vim-visual-multi

      ## treesitter
      nvim-treesitter-refactor
      nvim-treesitter-textobjects
      nvim-ts-autotag
      nvim-ts-context-commentstring
      spellsitter-nvim

      ## lsp
      fidget-nvim
      mason-nvim
      mason-lspconfig-nvim
      null-ls-nvim
      nvim-lspconfig
      lsp-format-nvim
      lsp_signature-nvim
      lua-dev-nvim
      symbols-outline-nvim

      ## completion
      nvim-cmp
      lspkind-nvim
      cmp-buffer
      cmp-cmdline
      copilot-cmp
      cmp_luasnip
      cmp-nvim-lsp
      cmp-nvim-lsp-signature-help
      cmp-omni
      cmp-path
      cmp-spell
      # FIXME somehow copilot.vim causes an error on startup
      # copilot-vim
      copilot-lua

      ## session
      auto-session
      session-lens

      ## snippet
      LuaSnip
      friendly-snippets

      ## ui
      bufferline-nvim
      # TODO defer loading
      diffview-nvim
      dressing-nvim
      gitsigns-nvim
      lualine-nvim
      # TODO defer loading
      nvim-tree-lua
      # TODO defer loading
      telescope-nvim
      telescope-fzy-native-nvim
      telescope-file-browser-nvim
      telescope-luasnip-nvim
      telescope-project-nvim
      telescope-symbols-nvim
      # TODO defer loading
      toggleterm-nvim
      todo-comments-nvim
      tokyonight-nvim
      # TODO defer loading
      trouble-nvim
      which-key-nvim

      # tools
      # TODO defer loading
      neogit
      # TODO defer loading
      octo-nvim
    ]);
    opt = with yonvimPlugins; [
      ## ui
      indent-blankline-nvim
    ];
  };
}
