return {
    {
        dir = "@tokyonight@",
        config = function()
            require("yvim.plugin.tokyonight").config()
        end
    },

    -- Core
    {
        dir = "@mini_bufremove@",
        module = "mini.bufremove",
        config = function()
            require("yvim.plugin.mini-bufremove").config()
        end,
    },
    {
        dir = "@notify@",
        name = "nvim-notify",
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
        dir = "@aerial@",
        dependencies = { "nvim-web-devicons" },
        init = function()
            require("yvim.plugin.aerial").setup()
        end,
        config = function()
            require("yvim.plugin.aerial").config()
        end,
        keys = {
            {
                "<Leader>cS",
                "<Cmd>AerialOpen<CR>",
                mode = "n",
                desc = "Symbols"
            }
        },
    },
    {
        dir = "@bufferline@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.bufferline").config()
        end,
    },
    {
        dir = "@colorizer@",
        config = function()
            require("yvim.plugin.colorizer").config()
        end
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
        dir = "@gitsigns@",
        config = function()
            require("yvim.plugin.gitsigns").config()
        end,
    },
    {
        dir = "@indent_blankline@",
        config = function()
            require("yvim.plugin.indent-blankline").config()
        end,
    },
    {
        dir = "@lualine@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.lualine").config()
        end,
    },
    {
        dir = "@neo_tree@",
        dependencies = { "plenary.nvim", "nvim-web-devicons", "nui.nvim" },
        config = function()
            require("yvim.plugin.neo-tree").config()
        end,
        keys = {
            {
                "<Leader>op",
                "<Cmd>Neotree toggle<CR>",
                mode = "n",
                desc = "Project sidebar",
            },
            {
                "<Leader>oP",
                "<Cmd>Neotree reveal<CR>",
                mode = "n",
                desc = "Find file in project sidebar",
            },
        },
    },
    {
        dir = "@noice_nvim@",
        name = "noice.nvim",
        dependencies = { "nvim-notify", "nui.nvim" },
        config = function()
            require("yvim.plugin.noice").config()
        end,
    },
    {
        dir = "@nui@",
        name = "nui.nvim",
        lazy = true,
    },
    {
        dir = "@telescope@",
        name = "telescope.nvim",
        dependencies = {
            "plenary.nvim",
            "noice.nvim",
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
        dir = "@mini_comment@",
        config = function()
            require("yvim.plugin.mini-comment").config()
        end,
    },
    {
        dir = "@mini_jump@",
        config = function()
            require("yvim.plugin.mini-jump").config()
        end,
    },
    {
        dir = "@mini_surround@",
        config = function()
            require("yvim.plugin.mini-surround").config()
        end,
    },
    {
        dir = "@mini_trailspace@",
        config = function()
            require("yvim.plugin.mini-trailspace").config()
        end,
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
        dir = "@neoconf@",
        name = "neoconf.nvim",
        config = function()
            require("yvim.plugin.neoconf").config()
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
        dependencies = {
            "cmp-nvim-lsp",
            "mason-lspconfig.nvim",
            "neoconf.nvim",
            "neodev.nvim",
        },
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

    -- Completion
    {
        dir = "@cmp@",
        name = "nvim-cmp",
        dependencies = {
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
            "copilot_cmp"
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
        dir = "@copilot@",
        name = "copilot",
        lazy = true,
        config = function()
            require("yvim.plugin.copilot").config()
        end,
        cmd = "Copilot",
    },
    {
        dir = "@copilot_cmp@",
        name = "copilot_cmp",
        lazy = true,
        dependencies = { "copilot" },
        config = function()
            require("yvim.plugin.copilot_cmp").config()
        end,
    },

    -- Snippet
    {
        dir = "@luasnip@",
        dependencies = { "friendly-snippets" },
        config = function()
            require("yvim.plugin.luasnip").config()
        end,
        event = "InsertEnter *",
        module = "luasnip",
    },
    {
        dir = "@friendly_snippets@",
        name = "friendly-snippets",
        lazy = true,
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
