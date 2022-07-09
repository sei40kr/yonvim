local M = {}

local plugins = {
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
        config = require("yvim.plugins.web-devicons").config,
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
        config = require("yvim.plugins.project").config,
        module = "project_nvim",
    },

    {
        "@which_key_repo@",
        as = "which-key.nvim",
        commit = "@which_key_rev@",
        config = function()
            require("yvim.plugins.which-key").config()
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
                "@lspkind_repo@",
                commit = "@lspkind_rev@",
                module = "lspkind",
            },
            -- nvim-cmp sources
            {
                "@cmp_cmdline_repo@",
                after = "nvim-cmp",
                opt = true,
                commit = "@cmp_cmdline_rev@",
            },
            {
                "@copilot_cmp_repo@",
                as = "copilot-cmp",
                opt = true,
                commit = "@copilot_cmp_rev@",
                requires = "copilot.lua",
                module = "copilot_cmp",
            },
            {
                "@cmp_luasnip_repo@",
                after = "nvim-cmp",
                opt = true,
                commit = "@cmp_luasnip_rev@",
            },
            {
                "@cmp_nvim_lsp_repo@",
                as = "cmp-nvim-lsp",
                after = "nvim-cmp",
                opt = true,
                commit = "@cmp_nvim_lsp_rev@",
            },
            {
                "@cmp_omni_repo@",
                commit = "@cmp_omni_rev@",
                after = "nvim-cmp",
                opt = true,
            },
            {
                "@cmp_path_repo@",
                after = "nvim-cmp",
                opt = true,
                commit = "@cmp_path_rev@",
            },
            {
                "@cmp_spell_repo@",
                after = "nvim-cmp",
                opt = true,
                commit = "@cmp_spell_rev@",
            },
        },
        config = function()
            require("yvim.plugins.cmp").config()
        end,
        event = { "InsertEnter", "CmdlineEnter" },
    },
    {
        "@copilot_vim_repo@",
        commit = "@copilot_vim_rev@",
        cmd = "Copilot",
    },
    {
        "@copilot_lua_repo@",
        commit = "@copilot_lua_rev@",
        config = function()
            vim.schedule(function()
                require("copilot").setup()
            end)
        end,
    },

    --
    --- Editor

    {
        "@hop_repo@",
        tag = "@hop_rev@",
        config = function()
            require("yvim.plugins.hop").config()
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
        config = function()
            require("yvim.plugins.autopairs").config()
        end,
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
        setup = function()
            require("yvim.plugins.vim-visual-multi").config()
        end,
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
        config = function()
            require("yvim.plugins.bufferline").config()
        end,
    },

    {
        "@gitsigns_repo@",
        tag = "@gitsigns_rev@",
        requires = "plenary.nvim",
        config = function()
            require("yvim.plugins.gitsigns").config()
        end,
    },

    {
        "@lualine_repo@",
        commit = "@lualine_rev@",
        after = "tokyonight.nvim",
        requires = "tokyonight.nvim",
        config = function()
            require("yvim.plugins.lualine").config()
        end,
    },

    {
        "@nvim_tree_repo@",
        commit = "@nvim_tree_rev@",
        requires = "nvim-web-devicons",
        config = function()
            require("yvim.plugins.nvim-tree").config()
        end,
        module = "nvim-tree",
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
        config = function()
            require("yvim.plugins.telescope").config()
        end,
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
        config = function()
            require("yvim.plugins.todo-comments").config()
        end,
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
        config = function()
            require("yvim.plugins.toggleterm").config()
        end,
        cmd = "ToggleTerm",
        module = "toggleterm",
    },

    {
        "@trouble_repo@",
        commit = "@trouble_rev@",
        requires = "nvim-web-devicons",
        config = function()
            require("yvim.plugins.trouble").config()
        end,
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
        config = function()
            require("yvim.plugins.diffview").config()
        end,
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
        config = function()
            require("yvim.plugins.neogit").config()
        end,
        cmd = "Neogit",
    },

    {
        "@null_ls_repo@",
        commit = "@null_ls_rev@",
        requires = { "plenary.nvim" },
        config = function()
            require("yvim.plugins.null-ls").config()
        end,
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
        config = function()
            require("yvim.plugins.lspconfig").config()
        end,
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
        setup = function()
            require("yvim.plugins.treesitter").setup()
        end,
        config = function()
            require("yvim.plugins.treesitter").config()
        end,
    },

    {
        "@octo_repo@",
        commit = "@octo_rev@",
        requires = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        config = function()
            require("yvim.plugins.octo").config()
        end,
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

function M.load()
    local packer = require("packer")
    packer.reset()
    packer.startup(function(use)
        for _, plugin in ipairs(plugins) do
            use(plugin)
        end
    end)
end

return M
