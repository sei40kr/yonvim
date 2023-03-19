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
        name = "open-browser.vim",
        cmd = {
            "OpenBrowser",
            "OpenBrowserSearch",
            "OpenBrowserSmartSearch",
        },
    },
    {
        dir = "@open_browser_github@",
        dependencies = { "open-browser.vim" },
        cmd = {
            "OpenGithubFile",
            "OpenGithubIssue",
            "OpenGithubPullReq",
            "OpenGithubProject",
        },
        keys = {
            { "<Leader>goo", ":OpenGithubFile<CR>",        mode = { "n", "x" },   desc = "Browse file" },
            { "<Leader>gor", "<Cmd>OpenGithubProject<CR>", desc = "Browse remote" },
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
        dir = "@lualine@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.lualine").config()
        end,
    },
    {
        dir = "@mini_indentscope@",
        opts = function()
            return {
                draw = {
                    animation = require("mini.indentscope").gen_animation.none(),
                },
                mappings = {
                    object_scope = '',
                    object_scope_with_border = '',
                    goto_top = '',
                    goto_bottom = '',
                },
                symbol = '╎',
            }
        end,
        config = function(_, opts)
            require("mini.indentscope").setup(opts)
        end
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
        keys = {
            { "<Leader>'", function()
                require("telescope.builtin").resume()
            end, desc = "Resume last search" },
            { "<Leader>:", function()
                require("telescope.builtin").commands()
            end, desc = ":" },
            { "<Leader>bb", function()
                require("telescope.builtin").buffers()
            end, desc = "Switch buffer" },
            { "<Leader>fr", function()
                require("telescope.builtin").oldfiles()
            end, desc = "Recent files" },
            { "<Leader>gb", function()
                require("telescope.builtin").git_branches()
            end, desc = "Switch branch" },
            { "<Leader>ha", function()
                require("telescope.builtin").autocommands()
            end, desc = "autocmds" },
            { "<Leader>hf", function()
                require("telescope.builtin").filetypes()
            end, desc = "filetypes" },
            { "<Leader>hh", function()
                require("telescope.builtin").help_tags()
            end, desc = "help" },
            { "<Leader>hH", function()
                require("telescope.builtin").highlights()
            end, desc = "highlights" },
            { "<Leader>hk", function()
                require("telescope.builtin").keymaps()
            end, desc = "keymaps" },
            { "<Leader>hm", function()
                require("telescope.builtin").man_pages()
            end, desc = "manpages" },
            { "<Leader>ho", function()
                require("telescope.builtin").vim_options()
            end, desc = "vim options" },
            { "<Leader>ie", function()
                require("telescope.builtin").symbols({ sources = { "emoji" } })
            end, desc = "Emoji" },
            { "<M-Space>ie", function()
                require("telescope.builtin").symbols({ sources = { "emoji" } })
            end, mode = "i", desc = "Emoji" },
            { "<Leader>ir", function()
                require("telescope.builtin").registers()
            end, desc = "From register" },
            { "<M-Space>ir", function()
                require("telescope.builtin").registers()
            end, mode = "i", desc = "From register" },
            { "<Leader>sj", function()
                require("telescope.builtin").jumplist()
            end, desc = "Jump list" },
            { "<Leader>sr", function()
                require("telescope.builtin").marks()
            end, desc = "Jump to mark" },
        },
        cmd = "Telescope",
        module = { "telescope", "telescope.builtin" },
    },
    {
        dir = "@toggleterm@",
        config = function()
            require("yvim.plugin.toggleterm").config()
        end,
        cmd = "ToggleTerm",
        keys = {
            { "<Leader>ot", "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal popup" },
        },
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
        keys = {
            { "<Leader>j", function()
                require("hop").hint_char2()
            end, desc = "Jump to" },
        },
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
        keys = {
            { "<Leader>cs", function()
                require("iron.core").visual_send()
            end, mode = { "n", "x" }, desc = "Send to REPL" },
            { "<Leader>or", function()
                require("iron.core").repl_for(vim.bo.filetype)
            end, mode = "n", desc = "Open REPL" },
            { "<Leader>oR", function()
                require("iron.core").repl_here(vim.bo.filetype)
            end, mode = "n", desc = "Open REPL" },
        },
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
        keys = {
            { "<Leader>gci", "<Cmd>Octo issue create<CR>", desc = "Issue" },
            { "<Leader>gcp", "<Cmd>Octo pr create<CR>",    desc = "Pull request" },
            { "<Leader>gfi", "<Cmd>Octo issue search<CR>", desc = "Find issue" },
            { "<Leader>gfp", "<Cmd>Octo pr search<CR>",    desc = "Find pull request" },
            { "<Leader>gli", "<Cmd>Octo issue list<CR>",   desc = "List issues" },
            { "<Leader>glp", "<Cmd>Octo pr list<CR>",      desc = "List pull requests" },
            { "<Leader>glg", "<Cmd>Octo gist list<CR>",    desc = "List gits" },
        },
    },
}
