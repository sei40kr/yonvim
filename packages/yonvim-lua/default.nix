{ lib, vimPlugins, vimUtils, yonvimPlugins }:

let nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps; [
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
vimUtils.buildVimPluginFrom2Nix {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  postFixup = ''
    substituteInPlace $out/lua/yvim/lazy/plugins.lua \
      --subst-var-by mini                                ${yonvimPlugins.mini-nvim.outPath} \
      --subst-var-by notify                              ${yonvimPlugins.nvim-notify.outPath} \
      --subst-var-by open_browser                        ${yonvimPlugins.open-browser-vim.outPath} \
      --subst-var-by open_browser_github                 ${yonvimPlugins.open-browser-github-vim.outPath} \
      --subst-var-by plenary                             ${yonvimPlugins.plenary-nvim.outPath} \
      --subst-var-by project                             ${yonvimPlugins.project-nvim.outPath} \
      --subst-var-by stickybuf                           ${yonvimPlugins.stickybuf-nvim.outPath} \
      --subst-var-by web_devicons                        ${yonvimPlugins.nvim-web-devicons.outPath} \
      --subst-var-by bufferline                          ${yonvimPlugins.bufferline-nvim.outPath} \
      --subst-var-by diffview                            ${yonvimPlugins.diffview-nvim.outPath} \
      --subst-var-by dressing                            ${yonvimPlugins.dressing-nvim.outPath} \
      --subst-var-by gitsigns                            ${yonvimPlugins.gitsigns-nvim.outPath} \
      --subst-var-by indent_blankline                    ${yonvimPlugins.indent-blankline-nvim.outPath} \
      --subst-var-by lualine                             ${yonvimPlugins.lualine-nvim.outPath} \
      --subst-var-by telescope                           ${yonvimPlugins.telescope-nvim.outPath} \
      --subst-var-by telescope_file_browser              ${yonvimPlugins.telescope-file-browser-nvim.outPath} \
      --subst-var-by telescope_fzy_native                ${yonvimPlugins.telescope-fzy-native-nvim.outPath} \
      --subst-var-by telescope_luasnip                   ${yonvimPlugins.telescope-luasnip-nvim.outPath} \
      --subst-var-by telescope_project                   ${yonvimPlugins.telescope-project-nvim.outPath} \
      --subst-var-by telescope_symbols                   ${yonvimPlugins.telescope-symbols-nvim.outPath} \
      --subst-var-by todo_comments                       ${yonvimPlugins.todo-comments-nvim.outPath} \
      --subst-var-by toggleterm                          ${yonvimPlugins.toggleterm-nvim.outPath} \
      --subst-var-by tokyonight                          ${yonvimPlugins.tokyonight-nvim.outPath} \
      --subst-var-by tree                                ${yonvimPlugins.nvim-tree-lua.outPath} \
      --subst-var-by trouble                             ${yonvimPlugins.trouble-nvim.outPath} \
      --subst-var-by which_key                           ${yonvimPlugins.which-key-nvim.outPath} \
      --subst-var-by virt_column                         ${yonvimPlugins.virt-column-nvim.outPath} \
      --subst-var-by editorconfig                        ${yonvimPlugins.editorconfig-nvim.outPath} \
      --subst-var-by hop                                 ${yonvimPlugins.hop-nvim.outPath} \
      --subst-var-by autopairs                           ${yonvimPlugins.nvim-autopairs.outPath} \
      --subst-var-by nvimacs                             ${yonvimPlugins.nvimacs.outPath} \
      --subst-var-by visual_multi                        ${yonvimPlugins.vim-visual-multi.outPath} \
      --subst-var-by treesitter                          ${nvim-treesitter.outPath} \
      --subst-var-by treesitter_endwise                  ${yonvimPlugins.nvim-treesitter-endwise.outPath} \
      --subst-var-by treesitter_refactor                 ${yonvimPlugins.nvim-treesitter-refactor.outPath} \
      --subst-var-by treesitter_textobjects              ${yonvimPlugins.nvim-treesitter-textobjects.outPath} \
      --subst-var-by treesitter_ts_autotag               ${yonvimPlugins.nvim-ts-autotag.outPath} \
      --subst-var-by treesitter_ts_context_commentstring ${yonvimPlugins.nvim-ts-context-commentstring.outPath} \
      --subst-var-by spellsitter                         ${yonvimPlugins.spellsitter-nvim.outPath} \
      --subst-var-by fidget                              ${yonvimPlugins.fidget-nvim.outPath} \
      --subst-var-by mason                               ${yonvimPlugins.mason-nvim.outPath} \
      --subst-var-by mason_lspconfig                     ${yonvimPlugins.mason-lspconfig-nvim.outPath} \
      --subst-var-by null_ls                             ${yonvimPlugins.null-ls-nvim.outPath} \
      --subst-var-by lspconfig                           ${yonvimPlugins.nvim-lspconfig.outPath} \
      --subst-var-by lsp_format                          ${yonvimPlugins.lsp-format-nvim.outPath} \
      --subst-var-by lsp_signature                       ${yonvimPlugins.lsp_signature-nvim.outPath} \
      --subst-var-by lua_dev                             ${yonvimPlugins.lua-dev-nvim.outPath} \
      --subst-var-by symbols_outline                     ${yonvimPlugins.symbols-outline-nvim.outPath} \
      --subst-var-by cmp                                 ${yonvimPlugins.nvim-cmp.outPath} \
      --subst-var-by cmp_buffer                          ${yonvimPlugins.cmp-buffer.outPath} \
      --subst-var-by cmp_cmdline                         ${yonvimPlugins.cmp-cmdline.outPath} \
      --subst-var-by cmp_luasnip                         ${yonvimPlugins.cmp_luasnip.outPath} \
      --subst-var-by cmp_nvim_lsp                        ${yonvimPlugins.cmp-nvim-lsp.outPath} \
      --subst-var-by cmp_nvim_lsp_signature_help         ${yonvimPlugins.cmp-nvim-lsp-signature-help.outPath} \
      --subst-var-by cmp_omni                            ${yonvimPlugins.cmp-omni.outPath} \
      --subst-var-by cmp_path                            ${yonvimPlugins.cmp-path.outPath} \
      --subst-var-by cmp_spell                           ${yonvimPlugins.cmp-spell.outPath} \
      --subst-var-by cmp_under_comparator                ${yonvimPlugins.cmp-under-comparator.outPath} \
      --subst-var-by lspkind                             ${yonvimPlugins.lspkind-nvim.outPath} \
      --subst-var-by copilot_cmp                         ${yonvimPlugins.copilot-cmp.outPath} \
      --subst-var-by copilot_vim                         ${yonvimPlugins.copilot-vim.outPath} \
      --subst-var-by copilot_lua                         ${yonvimPlugins.copilot-lua.outPath} \
      --subst-var-by luasnip                             ${yonvimPlugins.LuaSnip.outPath} \
      --subst-var-by friendly_snippets                   ${yonvimPlugins.friendly-snippets.outPath} \
      --subst-var-by iron                                ${yonvimPlugins.iron-nvim.outPath} \
      --subst-var-by neogit                              ${yonvimPlugins.neogit.outPath} \
      --subst-var-by octo                                ${yonvimPlugins.octo-nvim.outPath}
  '';

  postInstall = ''
    rm -rf $out/packages $out/flake.*
  '';

  meta = with lib; {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
