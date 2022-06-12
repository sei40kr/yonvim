vim.cmd("packadd packer.nvim")

local packer = require("packer")

packer.startup({
    function(use)
        use({
            "@packer_nvim@",
            as = "packer.nvim",
            opt = true,
        })

        use({
            "lewis6991/impatient.nvim",
            as = "impatient.nvim",
            commit = "3ea9abedb6941995b05fdad654d9cfd51c38a31f",
        })

        -- Core & Frameworks

        use({
            "folke/tokyonight.nvim",
            as = "tokyonight.nvim",
            opt = false,
            commit = "8223c970677e4d88c9b6b6d81bda23daf11062bb",
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
            "echasnovski/mini.nvim",
            tag = "v0.4.0",
            config = require("yonvim.plugins.mini").config,
        })

        use({
            "kyazdani42/nvim-web-devicons",
            opt = true,
            commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e",
            config = require("yonvim.plugins.nvim-web-devicons").config,
            module = "nvim-web-devicons",
        })

        use({
            "nvim-lua/plenary.nvim",
            as = "plenary.nvim",
            opt = true,
            commit = "9c3239bc5f99b85be1123107f7290d16a68f8e64",
            module = "plenary",
        })

        use({
            "ahmedkhalf/project.nvim",
            opt = true,
            commit = "541115e762764bc44d7d3bf501b6e367842d3d4f",
            config = require("yonvim.plugins.project_nvim").config,
            module = "project_nvim",
        })

        use({
            "@which_key_nvim@",
            module = "which-key",
        })

        --
        --- Completion

        use({
            "hrsh7th/nvim-cmp",
            as = "nvim-cmp",
            commit = "15c7bf7c0dfb7c75eb526c53f9574633c13dc22d",
            requires = {
                {
                    "hrsh7th/cmp-cmdline",
                    commit = "c36ca4bc1dedb12b4ba6546b96c43896fd6e7252",
                    after = "nvim-cmp",
                },
                {
                    "hrsh7th/cmp-nvim-lsp",
                    as = "cmp-nvim-lsp",
                    commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8",
                    after = "nvim-cmp",
                },
                {
                    "saadparwaiz1/cmp_luasnip",
                    commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36",
                    after = "nvim-cmp",
                },
                {
                    "hrsh7th/cmp-omni",
                    commit = "7a457f0c4f9e0801fee777d955eb841659aa3b84",
                    after = "nvim-cmp",
                },
                {
                    "hrsh7th/cmp-path",
                    commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e",
                    after = "nvim-cmp",
                },
                {
                    "f3fora/cmp-spell",
                    commit = "5602f1a0de7831f8dad5b0c6db45328fbd539971",
                    after = "nvim-cmp",
                },
                {
                    "onsails/lspkind-nvim",
                    commit = "57e5b5dfbe991151b07d272a06e365a77cc3d0e7",
                    module = "lspkind",
                },
            },
            config = require("yonvim.plugins.nvim-cmp").config,
        })

        --
        --- Editor

        use({
            "phaazon/hop.nvim",
            tag = "v1.3.0",
            config = function()
                require("hop").setup()
            end,
            module = "hop",
        })

        use({
            "L3MON4D3/LuaSnip",
            commit = "52f4aed58db32a3a03211d31d2b12c0495c45580",
            event = "InsertEnter *",
            module = "luasnip",
        })

        use({
            "windwp/nvim-autopairs",
            commit = "84cde3547e9a8b16db0bfe523e98e19b7be5148b",
            config = require("yonvim.plugins.nvim-autopairs").config,
            event = "InsertEnter *",
        })

        use({
            "mg979/vim-visual-multi",
            tag = "v0.5.8",
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
            "akinsho/bufferline.nvim",
            tag = "v2.2.1",
            config = require("yonvim.plugins.bufferline").config,
        })

        use({
            "lewis6991/gitsigns.nvim",
            tag = "v0.4",
            requires = "plenary.nvim",
            config = require("yonvim.plugins.gitsigns").config,
        })

        use({
            "nvim-lualine/lualine.nvim",
            commit = "3362b28f917acc37538b1047f187ff1b5645ecdd",
            after = "tokyonight.nvim",
            requires = "tokyonight.nvim",
            config = require("yonvim.plugins.lualine").config,
        })

        use({
            "kyazdani42/nvim-tree.lua",
            commit = "25921aa87a3da31d788870ec2d4e94c723923975",
            requires = "nvim-web-devicons",
            config = require("yonvim.plugins.nvim-tree").config,
            cmd = { "NvimTreeFindFile", "NvimTreeToggle" },
        })

        use({
            "nvim-telescope/telescope.nvim",
            as = "telescope.nvim",
            tag = "nvim-0.5.1",
            requires = {
                "nvim-web-devicons",
                "plenary.nvim",
                {
                    "nvim-telescope/telescope-file-browser.nvim",
                    commit = "c6f5104ff309649ebbaec283bbd1ab54511dd109",
                },
                {
                    "benfowler/telescope-luasnip.nvim",
                    commit = "b4ebc74bb49fadc28fb7432f448ba8cbcee58904",
                },
                {
                    "nvim-telescope/telescope-project.nvim",
                    commit = "d317c3cef6917d650d9a638c627b54d3e1173031",
                },
                {
                    "nvim-telescope/telescope-symbols.nvim",
                    commit = "d2d7d6b4298a1f733649526661d872c5e7a75521",
                },
            },
            config = require("yonvim.plugins.telescope_nvim").config,
            cmd = "Telescope",
            module = "telescope",
        })

        use({
            "folke/todo-comments.nvim",
            commit = "98b1ebf198836bdc226c0562b9f906584e6c400e",
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
            "akinsho/toggleterm.nvim",
            commit = "ed812c8eb4d2a297a6a74bd63f3e892179b92776",
            config = require("yonvim.plugins.toggleterm_nvim").config,
            cmd = "ToggleTerm",
            module = "toggleterm",
        })

        use({
            "folke/trouble.nvim",
            commit = "691d490cc4eadc430d226fa7d77aaa84e2e0a125",
            requires = "nvim-web-devicons",
            config = require("yonvim.plugins.trouble_nvim").config,
            cmd = { "Trouble", "TroubleToggle" },
        })

        --
        --- Tools

        use({
            "sindrets/diffview.nvim",
            as = "diffview.nvim",
            commit = "2d1f45282587d565cc4d84112490bc944c0b491d",
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
            "TimUntersberger/neogit",
            commit = "c8dd268091ffcbcb673de59c5b37ff26a2eb24ed",
            requires = { "diffview.nvim", "plenary.nvim" },
            config = require("yonvim.plugins.neogit").config,
            cmd = "Neogit",
        })

        use({
            "jose-elias-alvarez/null-ls.nvim",
            commit = "8f7af2ef9d9ff5e331be6725c39ce89a79b36bbc",
            requires = { "plenary.nvim" },
            config = require("yonvim.plugins.null-ls").config,
        })

        use({
            "neovim/nvim-lspconfig",
            tag = "v0.1.3",
            after = "cmp-nvim-lsp",
            requires = {
                "cmp-nvim-lsp",
                {
                    "folke/lua-dev.nvim",
                    commit = "a0ee77789d9948adce64d98700cc90cecaef88d5",
                },
            },
            config = require("yonvim.plugins.nvim-lspconfig").config,
        })

        use({
            "@nvim_treesitter@",
            requires = {
                {
                    "nvim-treesitter/nvim-treesitter-refactor",
                    commit = "0dc8069641226904f9757de786a6ab2273eb73ea",
                },
                {
                    "nvim-treesitter/nvim-treesitter-textobjects",
                    commit = "29c5e9effe53f19f250e3a88d1427b35031bc90d",
                },
                {
                    "windwp/nvim-ts-autotag",
                    commit = "57035b5814f343bc6110676c9ae2eacfcd5340c2",
                },
                {
                    "JoosepAlviste/nvim-ts-context-commentstring",
                    commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269",
                },
                "@nvim_ts_rainbow@",
            },
            config = require("yonvim.plugins.nvim-treesitter").config,
        })

        use({
            "pwntester/octo.nvim",
            commit = "0beb4de71062435ad934caba5728f7f01ae8b969",
            requires = {
                "nvim-web-devicons",
                "plenary.nvim",
                "telescope.nvim",
            },
            config = require("yonvim.plugins.octo").config,
            cmd = "Octo",
        })

        use({
            "tyru/open-browser-github.vim",
            commit = "ac7c034e300f36d591ef234dcd5eb5cd5c07c74f",
            requires = {
                {
                    "tyru/open-browser.vim",
                    commit = "80ec3f2bb0a86ac13c998e2f2c86e16e6d2f20bb",
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
