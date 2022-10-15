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
    substituteInPlace $out/lua/yvim/packer_plugins.lua \
      --subst-var-by close_buffers                       ${yonvimPlugins.close-buffers-nvim.rtp} \
      --subst-var-by mini                                ${yonvimPlugins.mini-nvim.rtp} \
      --subst-var-by notify                              ${yonvimPlugins.nvim-notify.rtp} \
      --subst-var-by open_browser                        ${yonvimPlugins.open-browser-vim.rtp} \
      --subst-var-by open_browser_github                 ${yonvimPlugins.open-browser-github-vim.rtp} \
      --subst-var-by plenary                             ${yonvimPlugins.plenary-nvim.rtp} \
      --subst-var-by project                             ${yonvimPlugins.project-nvim.rtp} \
      --subst-var-by stickybuf                           ${yonvimPlugins.stickybuf-nvim.rtp} \
      --subst-var-by web_devicons                        ${yonvimPlugins.nvim-web-devicons.rtp} \
      --subst-var-by bufferline                          ${yonvimPlugins.bufferline-nvim.rtp} \
      --subst-var-by diffview                            ${yonvimPlugins.diffview-nvim.rtp} \
      --subst-var-by dressing                            ${yonvimPlugins.dressing-nvim.rtp} \
      --subst-var-by gitsigns                            ${yonvimPlugins.gitsigns-nvim.rtp} \
      --subst-var-by indent_blankline                    ${yonvimPlugins.indent-blankline-nvim.rtp} \
      --subst-var-by lualine                             ${yonvimPlugins.lualine-nvim.rtp} \
      --subst-var-by telescope                           ${yonvimPlugins.telescope-nvim.rtp} \
      --subst-var-by telescope_file_browser              ${yonvimPlugins.telescope-file-browser-nvim.rtp} \
      --subst-var-by telescope_fzy_native                ${yonvimPlugins.telescope-fzy-native-nvim.rtp} \
      --subst-var-by telescope_luasnip                   ${yonvimPlugins.telescope-luasnip-nvim.rtp} \
      --subst-var-by telescope_project                   ${yonvimPlugins.telescope-project-nvim.rtp} \
      --subst-var-by telescope_symbols                   ${yonvimPlugins.telescope-symbols-nvim.rtp} \
      --subst-var-by todo_comments                       ${yonvimPlugins.todo-comments-nvim.rtp} \
      --subst-var-by toggleterm                          ${yonvimPlugins.toggleterm-nvim.rtp} \
      --subst-var-by tokyonight                          ${yonvimPlugins.tokyonight-nvim.rtp} \
      --subst-var-by tree                                ${yonvimPlugins.nvim-tree-lua.rtp} \
      --subst-var-by trouble                             ${yonvimPlugins.trouble-nvim.rtp} \
      --subst-var-by which_key                           ${yonvimPlugins.which-key-nvim.rtp} \
      --subst-var-by virt_column                         ${yonvimPlugins.virt-column-nvim.rtp} \
      --subst-var-by editorconfig                        ${yonvimPlugins.editorconfig-nvim.rtp} \
      --subst-var-by hop                                 ${yonvimPlugins.hop-nvim.rtp} \
      --subst-var-by autopairs                           ${yonvimPlugins.nvim-autopairs.rtp} \
      --subst-var-by nvimacs                             ${yonvimPlugins.nvimacs.rtp} \
      --subst-var-by visual_multi                        ${yonvimPlugins.vim-visual-multi.rtp} \
      --subst-var-by treesitter                          ${nvim-treesitter.rtp} \
      --subst-var-by treesitter_endwise                  ${yonvimPlugins.nvim-treesitter-endwise.rtp} \
      --subst-var-by treesitter_refactor                 ${yonvimPlugins.nvim-treesitter-refactor.rtp} \
      --subst-var-by treesitter_textobjects              ${yonvimPlugins.nvim-treesitter-textobjects.rtp} \
      --subst-var-by treesitter_ts_autotag               ${yonvimPlugins.nvim-ts-autotag.rtp} \
      --subst-var-by treesitter_ts_context_commentstring ${yonvimPlugins.nvim-ts-context-commentstring.rtp} \
      --subst-var-by spellsitter                         ${yonvimPlugins.spellsitter-nvim.rtp} \
      --subst-var-by fidget                              ${yonvimPlugins.fidget-nvim.rtp} \
      --subst-var-by mason                               ${yonvimPlugins.mason-nvim.rtp} \
      --subst-var-by mason_lspconfig                     ${yonvimPlugins.mason-lspconfig-nvim.rtp} \
      --subst-var-by null_ls                             ${yonvimPlugins.null-ls-nvim.rtp} \
      --subst-var-by lspconfig                           ${yonvimPlugins.nvim-lspconfig.rtp} \
      --subst-var-by lsp_format                          ${yonvimPlugins.lsp-format-nvim.rtp} \
      --subst-var-by lsp_signature                       ${yonvimPlugins.lsp_signature-nvim.rtp} \
      --subst-var-by lua_dev                             ${yonvimPlugins.lua-dev-nvim.rtp} \
      --subst-var-by symbols_outline                     ${yonvimPlugins.symbols-outline-nvim.rtp} \
      --subst-var-by cmp                                 ${yonvimPlugins.nvim-cmp.rtp} \
      --subst-var-by cmp_buffer                          ${yonvimPlugins.cmp-buffer.rtp} \
      --subst-var-by cmp_cmdline                         ${yonvimPlugins.cmp-cmdline.rtp} \
      --subst-var-by cmp_luasnip                         ${yonvimPlugins.cmp_luasnip.rtp} \
      --subst-var-by cmp_nvim_lsp                        ${yonvimPlugins.cmp-nvim-lsp.rtp} \
      --subst-var-by cmp_nvim_lsp_signature_help         ${yonvimPlugins.cmp-nvim-lsp-signature-help.rtp} \
      --subst-var-by cmp_omni                            ${yonvimPlugins.cmp-omni.rtp} \
      --subst-var-by cmp_path                            ${yonvimPlugins.cmp-path.rtp} \
      --subst-var-by cmp_spell                           ${yonvimPlugins.cmp-spell.rtp} \
      --subst-var-by cmp_under_comparator                ${yonvimPlugins.cmp-under-comparator.rtp} \
      --subst-var-by lspkind                             ${yonvimPlugins.lspkind-nvim.rtp} \
      --subst-var-by copilot_cmp                         ${yonvimPlugins.copilot-cmp.rtp} \
      --subst-var-by copilot_vim                         ${yonvimPlugins.copilot-vim.rtp} \
      --subst-var-by copilot_lua                         ${yonvimPlugins.copilot-lua.rtp} \
      --subst-var-by auto_session                        ${yonvimPlugins.auto-session.rtp} \
      --subst-var-by session_lens                        ${yonvimPlugins.session-lens.rtp} \
      --subst-var-by luasnip                             ${yonvimPlugins.LuaSnip.rtp} \
      --subst-var-by friendly_snippets                   ${yonvimPlugins.friendly-snippets.rtp} \
      --subst-var-by iron                                ${yonvimPlugins.iron-nvim.rtp} \
      --subst-var-by neogit                              ${yonvimPlugins.neogit.rtp} \
      --subst-var-by octo                                ${yonvimPlugins.octo-nvim.rtp}
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
