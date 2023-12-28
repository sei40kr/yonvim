{ lib, vimPlugins, vimUtils, yonvimPlugins }:

let
  nvim-treesitter = vimPlugins.nvim-treesitter.withPlugins (ps: with ps; [
    awk
    bash
    c
    c-sharp
    clojure
    cmake
    cpp
    css
    diff
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
    query
    perl
    php
    prisma
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
    terraform
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
vimUtils.buildVimPlugin {
  pname = "yonvim.lua";
  version = "1.0.0";

  src = ../..;

  postFixup = ''
    substituteInPlace $out/lua/yvim/plugins/coding/init.lua \
      --subst-var-by autopairs                   ${yonvimPlugins.nvim-autopairs.outPath} \
      --subst-var-by cmp                         ${yonvimPlugins.nvim-cmp.outPath} \
      --subst-var-by cmp_cmdline                 ${yonvimPlugins.cmp-cmdline.outPath} \
      --subst-var-by cmp_luasnip                 ${yonvimPlugins.cmp_luasnip.outPath} \
      --subst-var-by cmp_nvim_lsp                ${yonvimPlugins.cmp-nvim-lsp.outPath} \
      --subst-var-by cmp_nvim_lsp_signature_help ${yonvimPlugins.cmp-nvim-lsp-signature-help.outPath} \
      --subst-var-by cmp_omni                    ${yonvimPlugins.cmp-omni.outPath} \
      --subst-var-by cmp_path                    ${yonvimPlugins.cmp-path.outPath} \
      --subst-var-by cmp_spell                   ${yonvimPlugins.cmp-spell.outPath} \
      --subst-var-by cmp_under_comparator        ${yonvimPlugins.cmp-under-comparator.outPath} \
      --subst-var-by lspkind                     ${yonvimPlugins.lspkind-nvim.outPath} \
      --subst-var-by luasnip                     ${yonvimPlugins.LuaSnip.outPath} \
      --subst-var-by friendly_snippets           ${yonvimPlugins.friendly-snippets.outPath} \
      --subst-var-by mini_comment                ${yonvimPlugins.mini-comment.outPath} \
      --subst-var-by mini_surround               ${yonvimPlugins.mini-surround.outPath} \
      --subst-var-by nvimacs                     ${yonvimPlugins.nvimacs.outPath} \
      --subst-var-by visual_multi                ${yonvimPlugins.vim-visual-multi.outPath} \
      --subst-var-by yanky                       ${yonvimPlugins.yanky-nvim.outPath}
    substituteInPlace $out/lua/yvim/plugins/coding/extras/copilot.lua \
      --subst-var-by cmp         ${yonvimPlugins.nvim-cmp.outPath} \
      --subst-var-by copilot     ${yonvimPlugins.copilot-lua.outPath} \
      --subst-var-by copilot_cmp ${yonvimPlugins.copilot-cmp.outPath}

    substituteInPlace $out/lua/yvim/plugins/colorscheme.lua \
      --subst-var-by tokyonight ${yonvimPlugins.tokyonight-nvim.outPath}

    substituteInPlace $out/lua/yvim/plugins/editor.lua \
      --subst-var-by aerial                 ${yonvimPlugins.aerial-nvim.outPath} \
      --subst-var-by diffview               ${yonvimPlugins.diffview-nvim.outPath} \
      --subst-var-by edgy                   ${yonvimPlugins.edgy-nvim.outPath} \
      --subst-var-by iron                   ${yonvimPlugins.iron-nvim.outPath} \
      --subst-var-by mini_bufremove         ${yonvimPlugins.mini-bufremove.outPath} \
      --subst-var-by navigator              ${yonvimPlugins.Navigator-nvim.outPath} \
      --subst-var-by neo_tree               ${yonvimPlugins.neo-tree-nvim.outPath} \
      --subst-var-by neogit                 ${yonvimPlugins.neogit.outPath} \
      --subst-var-by octo                   ${yonvimPlugins.octo-nvim.outPath} \
      --subst-var-by open_browser           ${yonvimPlugins.open-browser-vim.outPath} \
      --subst-var-by open_browser_github    ${yonvimPlugins.open-browser-github-vim.outPath} \
      --subst-var-by overseer               ${yonvimPlugins.overseer-nvim.outPath} \
      --subst-var-by project                ${yonvimPlugins.project-nvim.outPath} \
      --subst-var-by scope                  ${yonvimPlugins.scope-nvim.outPath} \
      --subst-var-by telescope              ${yonvimPlugins.telescope-nvim.outPath} \
      --subst-var-by telescope_file_browser ${yonvimPlugins.telescope-file-browser-nvim.outPath} \
      --subst-var-by telescope_fzy_native   ${yonvimPlugins.telescope-fzy-native-nvim.outPath} \
      --subst-var-by telescope_luasnip      ${yonvimPlugins.telescope-luasnip-nvim.outPath} \
      --subst-var-by telescope_project      ${yonvimPlugins.telescope-project-nvim.outPath} \
      --subst-var-by telescope_symbols      ${yonvimPlugins.telescope-symbols-nvim.outPath} \
      --subst-var-by telescope_tabs         ${yonvimPlugins.telescope-tabs.outPath} \
      --subst-var-by todo_comments          ${yonvimPlugins.todo-comments-nvim.outPath} \
      --subst-var-by toggleterm             ${yonvimPlugins.toggleterm-nvim.outPath} \
      --subst-var-by trouble                ${yonvimPlugins.trouble-nvim.outPath} \
      --subst-var-by which_key              ${yonvimPlugins.which-key-nvim.outPath} \
      --subst-var-by window_picker          ${yonvimPlugins.nvim-window-picker.outPath}

    substituteInPlace $out/lua/yvim/plugins/lang/extras/rust.lua \
      --subst-var-by rust_tools ${yonvimPlugins.rust-tools-nvim.outPath}
    substituteInPlace $out/lua/yvim/plugins/lang/extras/typescript.lua \
      --subst-var-by typescript ${yonvimPlugins.typescript-nvim.outPath}

    substituteInPlace $out/lua/yvim/plugins/lsp.lua \
      --subst-var-by neoconf         ${yonvimPlugins.neoconf-nvim.outPath} \
      --subst-var-by neodev          ${yonvimPlugins.neodev-nvim.outPath} \
      --subst-var-by none_ls         ${yonvimPlugins.none-ls-nvim.outPath} \
      --subst-var-by lsp_format      ${yonvimPlugins.lsp-format-nvim.outPath} \
      --subst-var-by lsp_inlayhints  ${yonvimPlugins.lsp-inlayhints-nvim.outPath} \
      --subst-var-by lspconfig       ${yonvimPlugins.nvim-lspconfig.outPath}

    substituteInPlace $out/lua/yvim/plugins/treesitter.lua \
      --subst-var-by treesitter                          ${nvim-treesitter.outPath} \
      --subst-var-by treesitter_endwise                  ${yonvimPlugins.nvim-treesitter-endwise.outPath} \
      --subst-var-by treesitter_pairs                    ${yonvimPlugins.nvim-treesitter-pairs.outPath} \
      --subst-var-by treesitter_refactor                 ${yonvimPlugins.nvim-treesitter-refactor.outPath} \
      --subst-var-by treesitter_textobjects              ${yonvimPlugins.nvim-treesitter-textobjects.outPath} \
      --subst-var-by treesitter_ts_autotag               ${yonvimPlugins.nvim-ts-autotag.outPath}

    substituteInPlace $out/lua/yvim/plugins/ui.lua \
      --subst-var-by alpha              ${yonvimPlugins.alpha-nvim.outPath} \
      --subst-var-by bufferline         ${yonvimPlugins.bufferline-nvim.outPath} \
      --subst-var-by colorizer          ${yonvimPlugins.nvim-colorizer-lua.outPath} \
      --subst-var-by dressing           ${yonvimPlugins.dressing-nvim.outPath} \
      --subst-var-by flash              ${yonvimPlugins.flash-nvim.outPath} \
      --subst-var-by gitsigns           ${yonvimPlugins.gitsigns-nvim.outPath} \
      --subst-var-by illuminate         ${yonvimPlugins.vim-illuminate.outPath} \
      --subst-var-by indent_blankline   ${yonvimPlugins.indent-blankline-nvim.outPath} \
      --subst-var-by lualine            ${yonvimPlugins.lualine-nvim.outPath} \
      --subst-var-by mini_indentscope   ${yonvimPlugins.mini-indentscope.outPath} \
      --subst-var-by mini_trailspace    ${yonvimPlugins.mini-trailspace.outPath} \
      --subst-var-by navic              ${yonvimPlugins.nvim-navic.outPath} \
      --subst-var-by noice              ${yonvimPlugins.noice-nvim.outPath} \
      --subst-var-by notify             ${yonvimPlugins.nvim-notify.outPath} \
      --subst-var-by nui                ${yonvimPlugins.nui-nvim.outPath} \
      --subst-var-by rainbow_delimiters ${yonvimPlugins.rainbow-delimiters-nvim.outPath} \
      --subst-var-by virt_column        ${yonvimPlugins.virt-column-nvim.outPath} \
      --subst-var-by web_devicons       ${yonvimPlugins.nvim-web-devicons.outPath}

    substituteInPlace $out/lua/yvim/plugins/util.lua \
      --subst-var-by plenary ${yonvimPlugins.plenary-nvim.outPath}
  '';

  postInstall = ''
    rm -rf $out/packages $out/flake.*
  '';

  passthru.tree-sitter-grammars = nvim-treesitter.dependencies;
}
