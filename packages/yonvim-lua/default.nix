{ lib, vimPlugins, vimUtils, yonvimPlugins }:

let
  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps; [
    bash
    c
    c-sharp
    cpp
    css
    dockerfile
    # elisp
    fish
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
    lua
    make
    markdown
    markdown-inline
    nix
    norg
    ocaml
    perl
    php
    python
    r
    regex
    ruby
    rust
    scala
    scss
    sql
    svelte
    # swift
    toml
    tsx
    typescript
    verilog
    vim
    vue
    yaml
    zig
  ]);
in
vimUtils.buildVimPluginFrom2Nix {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  postFixup = ''
    substituteInPlace $out/lua/yvim/lazy/plugins.lua \
      --subst-var-by mini_bufremove                      ${yonvimPlugins.mini-bufremove.outPath} \
      --subst-var-by mini_comment                        ${yonvimPlugins.mini-comment.outPath} \
      --subst-var-by mini_jump                           ${yonvimPlugins.mini-jump.outPath} \
      --subst-var-by mini_surround                       ${yonvimPlugins.mini-surround.outPath} \
      --subst-var-by notify                              ${yonvimPlugins.nvim-notify.outPath} \
      --subst-var-by open_browser                        ${yonvimPlugins.open-browser-vim.outPath} \
      --subst-var-by open_browser_github                 ${yonvimPlugins.open-browser-github-vim.outPath} \
      --subst-var-by plenary                             ${yonvimPlugins.plenary-nvim.outPath} \
      --subst-var-by project                             ${yonvimPlugins.project-nvim.outPath} \
      --subst-var-by stickybuf                           ${yonvimPlugins.stickybuf-nvim.outPath} \
      --subst-var-by web_devicons                        ${yonvimPlugins.nvim-web-devicons.outPath} \
      --subst-var-by aerial                              ${yonvimPlugins.aerial-nvim.outPath} \
      --subst-var-by bufferline                          ${yonvimPlugins.bufferline-nvim.outPath} \
      --subst-var-by colorizer                           ${yonvimPlugins.nvim-colorizer-lua.outPath} \
      --subst-var-by diffview                            ${yonvimPlugins.diffview-nvim.outPath} \
      --subst-var-by gitsigns                            ${yonvimPlugins.gitsigns-nvim.outPath} \
      --subst-var-by indent_blankline                    ${yonvimPlugins.indent-blankline-nvim.outPath} \
      --subst-var-by lualine                             ${yonvimPlugins.lualine-nvim.outPath} \
      --subst-var-by neo_tree                            ${yonvimPlugins.neo-tree-nvim.outPath} \
      --subst-var-by noice_nvim                          ${yonvimPlugins.noice-nvim.outPath} \
      --subst-var-by nui                                 ${yonvimPlugins.nui-nvim.outPath} \
      --subst-var-by telescope                           ${yonvimPlugins.telescope-nvim.outPath} \
      --subst-var-by telescope_file_browser              ${yonvimPlugins.telescope-file-browser-nvim.outPath} \
      --subst-var-by telescope_fzy_native                ${yonvimPlugins.telescope-fzy-native-nvim.outPath} \
      --subst-var-by telescope_luasnip                   ${yonvimPlugins.telescope-luasnip-nvim.outPath} \
      --subst-var-by telescope_project                   ${yonvimPlugins.telescope-project-nvim.outPath} \
      --subst-var-by telescope_symbols                   ${yonvimPlugins.telescope-symbols-nvim.outPath} \
      --subst-var-by todo_comments                       ${yonvimPlugins.todo-comments-nvim.outPath} \
      --subst-var-by toggleterm                          ${yonvimPlugins.toggleterm-nvim.outPath} \
      --subst-var-by tokyonight                          ${yonvimPlugins.tokyonight-nvim.outPath} \
      --subst-var-by trouble                             ${yonvimPlugins.trouble-nvim.outPath} \
      --subst-var-by which_key                           ${yonvimPlugins.which-key-nvim.outPath} \
      --subst-var-by virt_column                         ${yonvimPlugins.virt-column-nvim.outPath} \
      --subst-var-by editorconfig                        ${yonvimPlugins.editorconfig-nvim.outPath} \
      --subst-var-by hop                                 ${yonvimPlugins.hop-nvim.outPath} \
      --subst-var-by autopairs                           ${yonvimPlugins.nvim-autopairs.outPath} \
      --subst-var-by mini_trailspace                     ${yonvimPlugins.mini-trailspace.outPath} \
      --subst-var-by nvimacs                             ${yonvimPlugins.nvimacs.outPath} \
      --subst-var-by visual_multi                        ${yonvimPlugins.vim-visual-multi.outPath} \
      --subst-var-by treesitter                          ${nvim-treesitter.outPath} \
      --subst-var-by treesitter_endwise                  ${yonvimPlugins.nvim-treesitter-endwise.outPath} \
      --subst-var-by treesitter_refactor                 ${yonvimPlugins.nvim-treesitter-refactor.outPath} \
      --subst-var-by treesitter_textobjects              ${yonvimPlugins.nvim-treesitter-textobjects.outPath} \
      --subst-var-by treesitter_ts_autotag               ${yonvimPlugins.nvim-ts-autotag.outPath} \
      --subst-var-by treesitter_ts_context_commentstring ${yonvimPlugins.nvim-ts-context-commentstring.outPath} \
      --subst-var-by spellsitter                         ${yonvimPlugins.spellsitter-nvim.outPath} \
      --subst-var-by mason                               ${yonvimPlugins.mason-nvim.outPath} \
      --subst-var-by mason_lspconfig                     ${yonvimPlugins.mason-lspconfig-nvim.outPath} \
      --subst-var-by neoconf                             ${yonvimPlugins.neoconf-nvim.outPath} \
      --subst-var-by neodev                              ${yonvimPlugins.neodev-nvim.outPath} \
      --subst-var-by null_ls                             ${yonvimPlugins.null-ls-nvim.outPath} \
      --subst-var-by lspconfig                           ${yonvimPlugins.nvim-lspconfig.outPath} \
      --subst-var-by lsp_format                          ${yonvimPlugins.lsp-format-nvim.outPath} \
      --subst-var-by cmp                                 ${yonvimPlugins.nvim-cmp.outPath} \
      --subst-var-by cmp_cmdline                         ${yonvimPlugins.cmp-cmdline.outPath} \
      --subst-var-by cmp_luasnip                         ${yonvimPlugins.cmp_luasnip.outPath} \
      --subst-var-by cmp_nvim_lsp                        ${yonvimPlugins.cmp-nvim-lsp.outPath} \
      --subst-var-by cmp_nvim_lsp_signature_help         ${yonvimPlugins.cmp-nvim-lsp-signature-help.outPath} \
      --subst-var-by cmp_omni                            ${yonvimPlugins.cmp-omni.outPath} \
      --subst-var-by cmp_path                            ${yonvimPlugins.cmp-path.outPath} \
      --subst-var-by cmp_spell                           ${yonvimPlugins.cmp-spell.outPath} \
      --subst-var-by cmp_under_comparator                ${yonvimPlugins.cmp-under-comparator.outPath} \
      --subst-var-by lspkind                             ${yonvimPlugins.lspkind-nvim.outPath} \
      --subst-var-by copilot                             ${yonvimPlugins.copilot-lua.outPath} \
      --subst-var-by copilot_cmp                         ${yonvimPlugins.copilot-cmp.outPath} \
      --subst-var-by luasnip                             ${yonvimPlugins.LuaSnip.outPath} \
      --subst-var-by friendly_snippets                   ${yonvimPlugins.friendly-snippets.outPath} \
      --subst-var-by iron                                ${yonvimPlugins.iron-nvim.outPath} \
      --subst-var-by neogit                              ${yonvimPlugins.neogit.outPath} \
      --subst-var-by octo                                ${yonvimPlugins.octo-nvim.outPath}
  '';

  postInstall = ''
    rm -rf $out/packages $out/flake.*
  '';

  passthru.tree-sitter-grammars = nvim-treesitter.dependencies;

  meta = with lib; {
    description = "My personal Neovim distribution";
    license = licenses.mit;
    platforms = platforms.all;
  };
}
