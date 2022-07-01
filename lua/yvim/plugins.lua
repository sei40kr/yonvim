local M = {
    {
        "@packer@",
        as = "packer.nvim",
        opt = true,
    },

    {
        "@impatient_repo@",
        as = "impatient.nvim",
        commit = "@impatient_rev@",
    },

    -- Core & Frameworks

    {
        "@tokyonight_repo@",
        as = "tokyonight.nvim",
        opt = false,
        commit = "@tokyonight_rev@",
        config = function()
            vim.cmd("colorscheme tokyonight")
        end,
        setup = function()
            vim.g.tokyonight_style = "night"
            vim.g.tokyonight_italic_keywords = false
            vim.g.tokyonight_transparent = vim.g.GuiLoaded ~= nil
            vim.g.tokyonight_transparent_sidebar = vim.g.GuiLoaded ~= nil
            vim.g.tokyonight_lualine_bold = true
        end,
    },

    {
        "@mini_repo@",
        tag = "@mini_rev@",
        config = require("yvim.plugins.mini").config,
    },

    {
        "@web_devicons_repo@",
        opt = true,
        commit = "@web_devicons_rev@",
        config = require("yvim.plugins.nvim-web-devicons").config,
        module = "nvim-web-devicons",
    },

    {
        "@plenary_repo@",
        as = "plenary.nvim",
        opt = true,
        commit = "@plenary_rev@",
        module = "plenary",
    },

    {
        "@project_repo@",
        opt = true,
        commit = "@project_rev@",
        config = require("yvim.plugins.project_nvim").config,
        module = "project_nvim",
    },

    {
        "@which_key_repo@",
        as = "which-key.nvim",
        commit = "@which_key_rev@",
        config = function()
            require("yvim.core.which-key").setup()
        end,
    },

    --
    --- Completion

    {
        "@cmp_repo@",
        as = "nvim-cmp",
        commit = "@cmp_rev@",
        requires = {
            {
                "@cmp_cmdline_repo@",
                commit = "@cmp_cmdline_rev@",
                after = "nvim-cmp",
            },
            {
                "@cmp_nvim_lsp_repo@",
                as = "cmp-nvim-lsp",
                commit = "@cmp_nvim_lsp_rev@",
                after = "nvim-cmp",
            },
            {
                "@cmp_luasnip_repo@",
                commit = "@cmp_luasnip_rev@",
                after = "nvim-cmp",
            },
            {
                "@cmp_omni_repo@",
                commit = "@cmp_omni_rev@",
                after = "nvim-cmp",
            },
            {
                "@cmp_path_repo@",
                commit = "@cmp_path_rev@",
                after = "nvim-cmp",
            },
            {
                "@cmp_spell_repo@",
                commit = "@cmp_spell_rev@",
                after = "nvim-cmp",
            },
            {
                "@lspkind_repo@",
                commit = "@lspkind_rev@",
                module = "lspkind",
            },
        },
        config = require("yvim.plugins.nvim-cmp").config,
    },

    --
    --- Editor

    {
        "@hop_repo@",
        tag = "@hop_rev@",
        config = function()
            require("hop").setup()
        end,
        module = "hop",
    },

    {
        "@luasnip_repo@",
        commit = "@luasnip_rev@",
        event = "InsertEnter *",
        module = "luasnip",
    },

    {
        "@autopairs_repo@",
        commit = "@autopairs_rev@",
        config = require("yvim.plugins.nvim-autopairs").config,
        event = "InsertEnter *",
    },

    {
        "@nvimacs_repo@",
        commit = "@nvimacs_rev@",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },

    {
        "@visual_multi_repo@",
        tag = "@visual_multi_rev@",
        setup = require("yvim.plugins.vim-visual-multi").setup,
        keys = {
            "<Plug>(VM-Find-Under)",
            "<Plug>(VM-Add-Cursor-Down)",
            "<Plug>(VM-Add-Cursor-Up)",
            "<Plug>(VM-Select-l)",
            "<Plug>(VM-Select-h)",
            "<Plug>(VM-Select-All)",
            "<Plug>(VM-Start-Regex-Search)",
            "<Plug>(VM-Add-Cursor-At-Pos)",
            { "x", "<Plug>(VM-Find-Subword-Under)" },
            { "x", "<Plug>(VM-Visual-Add)" },
            { "x", "<Plug>(VM-Visual-Find)" },
            { "x", "<Plug>(VM-Visual-Cursors)" },
            "<Plug>(VM-Mouse-Cursor)",
            "<Plug>(VM-Mouse-Word)",
            "<Plug>(VM-Mouse-Column)",
        },
    },

    --
    --- UI

    {
        "@bufferline_repo@",
        tag = "@bufferline_rev@",
        config = require("yvim.plugins.bufferline").config,
    },

    {
        "@gitsigns_repo@",
        tag = "@gitsigns_rev@",
        requires = "plenary.nvim",
        config = require("yvim.plugins.gitsigns").config,
    },

    {
        "@lualine_repo@",
        commit = "@lualine_rev@",
        after = "tokyonight.nvim",
        requires = "tokyonight.nvim",
        config = require("yvim.plugins.lualine").config,
    },

    {
        "@nvim_tree_repo@",
        commit = "@nvim_tree_rev@",
        requires = "nvim-web-devicons",
        config = require("yvim.plugins.nvim-tree").config,
        cmd = { "NvimTreeFindFile", "NvimTreeToggle" },
    },

    {
        "@telescope_repo@",
        as = "telescope.nvim",
        tag = "@telescope_rev@",
        requires = {
            "nvim-web-devicons",
            "plenary.nvim",
            {
                "@telescope_file_browser_repo@",
                commit = "@telescope_file_browser_rev@",
            },
            {
                "@telescope_luasnip_repo@",
                commit = "@telescope_luasnip_rev@",
            },
            {
                "@telescope_project_repo@",
                commit = "@telescope_project_rev@",
            },
            {
                "@telescope_symbols_repo@",
                commit = "@telescope_symbols_rev@",
            },
        },
        config = require("yvim.plugins.telescope_nvim").config,
        cmd = "Telescope",
        module = "telescope",
    },

    {
        "@todo_comments_repo@",
        commit = "@todo_comments_rev@",
        requires = {
            "plenary.nvim",
            "telescope.nvim",
            "trouble.nvim",
        },
        config = require("yvim.plugins.todo-comments_nvim").config,
        cmd = {
            "TodoQuickFix",
            "TodoLocList",
            "TodoTrouble",
            "TodoTelescope",
        },
    },

    {
        "@toggleterm_repo@",
        commit = "@toggleterm_rev@",
        config = require("yvim.plugins.toggleterm_nvim").config,
        cmd = "ToggleTerm",
        module = "toggleterm",
    },

    {
        "@trouble_repo@",
        commit = "@trouble_rev@",
        requires = "nvim-web-devicons",
        config = require("yvim.plugins.trouble_nvim").config,
        cmd = { "Trouble", "TroubleToggle" },
    },

    --
    --- Tools

    {
        "@diffview_repo@",
        as = "diffview.nvim",
        commit = "@diffview_rev@",
        requires = {
            "nvim-web-devicons",
            "plenary.nvim",
        },
        config = require("yvim.plugins.diffview").config,
        cmd = {
            "DiffviewOpen",
            "DiffviewToggleFiles",
            "DiffviewFileHistory",
        },
        module = "diffview",
    },

    {
        "@neogit_repo@",
        commit = "@neogit_rev@",
        requires = { "diffview.nvim", "plenary.nvim" },
        config = require("yvim.plugins.neogit").config,
        cmd = "Neogit",
    },

    {
        "@null_ls_repo@",
        commit = "@null_ls_rev@",
        requires = { "plenary.nvim" },
        config = require("yvim.plugins.null-ls").config,
    },

    {
        "@lspconfig_repo@",
        tag = "@lspconfig_rev@",
        after = "cmp-nvim-lsp",
        requires = {
            "cmp-nvim-lsp",
            {
                "@lua_dev_repo@",
                commit = "@lua_dev_rev@",
            },
        },
        config = require("yvim.plugins.nvim-lspconfig").config,
    },

    {
        "@treesitter@",
        requires = {
            {
                "@treesitter_refactor_repo@",
                commit = "@treesitter_refactor_rev@",
            },
            {
                "@treesitter_textobjects_repo@",
                commit = "@treesitter_textobjects_rev@",
            },
            {
                "@ts_autotag_repo@",
                commit = "@ts_autotag_rev@",
            },
            {
                "@ts_context_commentstring_repo@",
                commit = "@ts_context_commentstring_rev@",
            },
            "@ts_rainbow@",
        },
        config = require("yvim.plugins.nvim-treesitter").config,
    },

    {
        "@octo_repo@",
        commit = "@octo_rev@",
        requires = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        config = require("yvim.plugins.octo").config,
        cmd = "Octo",
    },

    {
        "@open_browser_github_repo@",
        commit = "@open_browser_github_rev@",
        requires = {
            {
                "@open_browser_repo@",
                commit = "@open_browser_rev@",
            },
        },
        cmd = { "OpenGithubFile", "OpenGithubProject" },
    },
}

return M
