vim.cmd("packadd packer.nvim")

local packer = require("packer")

packer.startup({
    function(use)
        use({
            "@packer@",
            as = "packer.nvim",
            opt = true,
        })

        use({
            "@impatient_repo@",
            as = "impatient.nvim",
            commit = "@impatient_rev@",
        })

        -- Core & Frameworks

        use({
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
        })

        use({
            "@mini_repo@",
            tag = "@mini_rev@",
            config = require("yonvim.plugins.mini").config,
        })

        use({
            "@web_devicons_repo@",
            opt = true,
            commit = "@web_devicons_rev@",
            config = require("yonvim.plugins.nvim-web-devicons").config,
            module = "nvim-web-devicons",
        })

        use({
            "@plenary_repo@",
            as = "plenary.nvim",
            opt = true,
            commit = "@plenary_rev@",
            module = "plenary",
        })

        use({
            "@project_repo@",
            opt = true,
            commit = "@project_rev@",
            config = require("yonvim.plugins.project_nvim").config,
            module = "project_nvim",
        })

        use({
            "@which_key@",
            module = "which-key",
        })

        --
        --- Completion

        use({
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
            config = require("yonvim.plugins.nvim-cmp").config,
        })

        --
        --- Editor

        use({
            "@hop_repo@",
            tag = "@hop_rev@",
            config = function()
                require("hop").setup()
            end,
            module = "hop",
        })

        use({
            "@luasnip_repo@",
            commit = "@luasnip_rev@",
            event = "InsertEnter *",
            module = "luasnip",
        })

        use({
            "@autopairs_repo@",
            commit = "@autopairs_rev@",
            config = require("yonvim.plugins.nvim-autopairs").config,
            event = "InsertEnter *",
        })

        use({
            "@visual_multi_repo@",
            tag = "@visual_multi_rev@",
            setup = require("yonvim.plugins.vim-visual-multi").setup,
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
        })

        --
        --- UI

        use({
            "@bufferline_repo@",
            tag = "@bufferline_rev@",
            config = require("yonvim.plugins.bufferline").config,
        })

        use({
            "@gitsigns_repo@",
            tag = "@gitsigns_rev@",
            requires = "plenary.nvim",
            config = require("yonvim.plugins.gitsigns").config,
        })

        use({
            "@lualine_repo@",
            commit = "@lualine_rev@",
            after = "tokyonight.nvim",
            requires = "tokyonight.nvim",
            config = require("yonvim.plugins.lualine").config,
        })

        use({
            "@nvim_tree_repo@",
            commit = "@nvim_tree_rev@",
            requires = "nvim-web-devicons",
            config = require("yonvim.plugins.nvim-tree").config,
            cmd = { "NvimTreeFindFile", "NvimTreeToggle" },
        })

        use({
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
            config = require("yonvim.plugins.telescope_nvim").config,
            cmd = "Telescope",
            module = "telescope",
        })

        use({
            "@todo_comments_repo@",
            commit = "@todo_comments_rev@",
            requires = {
                "plenary.nvim",
                "telescope.nvim",
                "trouble.nvim",
            },
            config = require("yonvim.plugins.todo-comments_nvim").config,
            cmd = {
                "TodoQuickFix",
                "TodoLocList",
                "TodoTrouble",
                "TodoTelescope",
            },
        })

        use({
            "@toggleterm_repo@",
            commit = "@toggleterm_rev@",
            config = require("yonvim.plugins.toggleterm_nvim").config,
            cmd = "ToggleTerm",
            module = "toggleterm",
        })

        use({
            "@trouble_repo@",
            commit = "@trouble_rev@",
            requires = "nvim-web-devicons",
            config = require("yonvim.plugins.trouble_nvim").config,
            cmd = { "Trouble", "TroubleToggle" },
        })

        --
        --- Tools

        use({
            "@diffview_repo@",
            as = "diffview.nvim",
            commit = "@diffview_rev@",
            requires = {
                "nvim-web-devicons",
                "plenary.nvim",
            },
            config = require("yonvim.plugins.diffview").config,
            cmd = {
                "DiffviewOpen",
                "DiffviewToggleFiles",
                "DiffviewFileHistory",
            },
            module = "diffview",
        })

        use({
            "@neogit_repo@",
            commit = "@neogit_rev@",
            requires = { "diffview.nvim", "plenary.nvim" },
            config = require("yonvim.plugins.neogit").config,
            cmd = "Neogit",
        })

        use({
            "@null_ls_repo@",
            commit = "@null_ls_rev@",
            requires = { "plenary.nvim" },
            config = require("yonvim.plugins.null-ls").config,
        })

        use({
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
            config = require("yonvim.plugins.nvim-lspconfig").config,
        })

        use({
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
            config = require("yonvim.plugins.nvim-treesitter").config,
        })

        use({
            "@octo_repo@",
            commit = "@octo_rev@",
            requires = {
                "nvim-web-devicons",
                "plenary.nvim",
                "telescope.nvim",
            },
            config = require("yonvim.plugins.octo").config,
            cmd = "Octo",
        })

        use({
            "@open_browser_github_repo@",
            commit = "@open_browser_github_rev@",
            requires = {
                {
                    "@open_browser_repo@",
                    commit = "@open_browser_rev@",
                },
            },
            cmd = { "OpenGithubFile", "OpenGithubProject" },
        })
    end,
    config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua",
    },
})

return packer
