return {
    {
        dir = "@tokyonight@",
        init = function()
            require("yvim.plugin.tokyonight").setup()
        end,
        config = function()
            require("yvim.plugin.tokyonight").config()
        end
    },

    -- Core
    {
        dir = "@mini@",
        init = function()
            require("yvim.plugin.mini").setup()
        end,
        config = function()
            require("yvim.plugin.mini").config()
        end,
    },
    {
        dir = "@notify@",
        config = function()
            require("yvim.plugin.notify").config()
        end,
    },
    {
        dir = "@open_browser@",
        cmd = {
            "OpenBrowser",
            "OpenBrowserSearch",
            "OpenBrowserSmartSearch",
        },
    },
    {
        dir = "@open_browser_github@",
        cmd = {
            "OpenGithubFile",
            "OpenGithubIssue",
            "OpenGithubPullReq",
            "OpenGithubProject",
        },
    },
    { dir = "@plenary@", name = "plenary.nvim" },
    {
        dir = "@project@",
        config = function()
            require("yvim.plugin.project").config()
        end,
    },
    {
        dir = "@stickybuf@",
        config = function()
            require("yvim.plugin.stickybuf").config()
        end,
    },
    {
        dir = "@web_devicons@",
        name = "nvim-web-devicons",
        config = function()
            require("yvim.plugin.web-devicons").config()
        end,
        module = "nvim-web-devicons",
    },

    -- UI
    {
        dir = "@bufferline@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.bufferline").config()
        end,
    },
    {
        dir = "@diffview@",
        dependencies = { "nvim-web-devicons", "plenary.nvim" },
        init = function()
            require("yvim.plugin.diffview").setup()
        end,
        config = function()
            require("yvim.plugin.diffview").config()
        end,
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    },
    {
        dir = "@dressing@",
        config = function()
            require("yvim.plugin.dressing").config()
        end,
    },
    {
        dir = "@gitsigns@",
        config = function()
            require("yvim.plugin.gitsigns").config()
        end,
    },
    -- HACK: Preventing indent-blankline.nvim from overriding colorscheme
    {
        dir = "@indent_blankline@",
        init = function()
            vim.g.__indent_blankline_setup_completed = true
        end,
        config = function()
            require("yvim.plugin.indent-blankline").config()
        end,
        event = "VimEnter *",
    },
    {
        dir = "@lualine@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.lualine").config()
        end,
    },
    {
        dir = "@telescope@",
        name = "telescope.nvim",
        dependencies = {
            { dir = "@telescope_file_browser@" },
            { dir = "@telescope_fzy_native@" },
            { dir = "@telescope_luasnip@" },
            { dir = "@telescope_project@" },
            { dir = "@telescope_symbols@" },
        },
        config = function()
            require("yvim.plugin.telescope").config()
        end,
        -- cmd = "Telescope",
        -- module = { "telescope", "telescope.builtins" },
    },
    {
        dir = "@toggleterm@",
        config = function()
            require("yvim.plugin.toggleterm").config()
        end,
        cmd = "ToggleTerm",
    },
    {
        dir = "@tree@",
        dependencies = { "nvim-web-devicons" },
        init = function()
            require("yvim.plugin.tree").setup()
        end,
        config = function()
            require("yvim.plugin.tree").config()
        end,
        cmd = { "NvimTreeOpen", "NvimTreeToggle", "NvimTreeFocus" },
        module = "nvim-tree",
    },
    {
        dir = "@trouble@",
        name = "trouble.nvim",
        dependencies = { "nvim-web-devicons" },
        init = function()
            require("yvim.plugin.trouble").setup()
        end,
        config = function()
            require("yvim.plugin.trouble").config()
        end,
        cmd = "Trouble",
    },
    {
        dir = "@todo_comments@",
        dependencies = { "trouble.nvim" },
        config = function()
            require("yvim.plugin.todo-comments").config()
        end,
    },
    {
        dir = "@virt_column@",
        config = function()
            require("yvim.plugin.virt-column").config()
        end,
    },
    {
        dir = "@which_key@",
        name = "which-key.nvim",
        config = function()
            require("yvim.plugin.which-key").config()
        end,
    },

    -- Edit
    { dir = "@editorconfig@" },
    {
        dir = "@hop@",
        config = function()
            require("yvim.plugin.hop").config()
        end,
        module = "hop",
    },
    {
        dir = "@autopairs@",
        config = function()
            require("yvim.plugin.autopairs").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    },
    {
        dir = "@nvimacs@",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },
    {
        dir = "@visual_multi@",
        init = function()
            require("yvim.plugin.visual-multi").setup()
        end,
        keys = "<Plug>VM-",
    },

    -- Tree-sitter
    {
        dir = "@treesitter@",
        dependencies = {
            { dir = "@treesitter_endwise@" },
            { dir = "@treesitter_refactor@" },
            { dir = "@treesitter_textobjects@" },
            { dir = "@treesitter_ts_autotag@" },
            { dir = "@treesitter_ts_context_commentstring@" },
        },
        config = function()
            require("yvim.plugin.treesitter").config()
        end,
    },
    {
        dir = "@spellsitter@",
        config = function()
            require("yvim.plugin.spellsitter").config()
        end,
    },

    -- LSP
    {
        dir = "@fidget@",
        config = function()
            require("yvim.plugin.fidget").config()
        end,
    },
    {
        dir = "@mason@",
        name = "mason.nvim",
        init = function()
            require("yvim.plugin.mason").setup()
        end,
        config = function()
            require("yvim.plugin.mason").config()
        end,
    },
    {
        dir = "@mason_lspconfig@",
        name = "mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            require("yvim.plugin.mason-lspconfig").config()
        end,
    },
    {
        dir = "@neodev@",
        name = "neodev.nvim",
        config = function()
            require("yvim.plugin.neodev").config()
        end,
    },
    {
        dir = "@null_ls@",
        config = function()
            require("yvim.plugin.null-ls").config()
        end,
    },
    {
        dir = "@lspconfig@",
        dependencies = { "cmp-nvim-lsp", "mason-lspconfig.nvim", "neodev.nvim" },
        init = function()
            require("yvim.plugin.lspconfig").setup()
        end,
        config = function()
            require("yvim.plugin.lspconfig").config()
        end,
    },
    {
        dir = "@lsp_format@",
        config = function()
            require("yvim.plugin.lsp-format").config()
        end,
        module = "lsp-format",
    },
    {
        dir = "@lsp_signature@",
        config = function()
            require("yvim.plugin.lsp_signature").config()
        end,
        module = "lsp_signature",
    },
    {
        dir = "@symbols_outline@",
        init = function()
            require("yvim.plugin.symbols-outline").setup()
        end,
        cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
    },

    -- Completion
    {
        dir = "@cmp@",
        name = "nvim-cmp",
        dependencies = {
            { dir = "@cmp_buffer@" },
            { dir = "@cmp_cmdline@" },
            { dir = "@cmp_luasnip@" },
            {
                dir = "@cmp_nvim_lsp@",
                name = "cmp-nvim-lsp",
            },
            { dir = "@cmp_nvim_lsp_signature_help@" },
            { dir = "@cmp_omni@" },
            { dir = "@cmp_path@" },
            { dir = "@cmp_spell@" },
        },
        init = function()
            require("yvim.plugin.cmp").setup()
        end,
        config = function()
            require("yvim.plugin.cmp").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    },
    { dir = "@cmp_under_comparator@" },
    { dir = "@lspkind@" },
    {
        dir = "@copilot_cmp@",
        config = function()
            require("yvim.plugin.copilot").config()
        end,
    },
    { dir = "@copilot_vim@", cmd = "Copilot" },
    { dir = "@copilot_lua@", module = "copilot" },

    -- Snippet
    {
        dir = "@luasnip@",
        config = function()
            require("yvim.plugin.luasnip").config()
        end,
        event = "InsertEnter *",
        module = "luasnip",
    },
    {
        dir = "@friendly_snippets@",
        config = function()
            require("yvim.plugin.friendly-snippets").config()
        end,
    },

    -- Tools
    {
        dir = "@iron@",
        config = function()
            require("yvim.plugin.iron").config()
        end,
    },
    {
        dir = "@neogit@",
        dependencies = { "plenary.nvim" },
        config = function()
            require("yvim.plugin.neogit").config()
        end,
        module = "neogit",
    },
    {
        dir = "@octo@",
        dependencies = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        config = function()
            require("yvim.plugin.octo").config()
        end,
        cmd = "Octo",
    },
}
