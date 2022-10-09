return function(use)
    -- Core
    use({
        "@close_buffers@",
        config = function()
            require("yvim.plugin.close-buffers").config()
        end,
        module = "close_buffers",
    })
    use({
        "@mini@",
        setup = function()
            require("yvim.plugin.mini").setup()
        end,
        config = function()
            require("yvim.plugin.mini").config()
        end,
    })
    use({
        "@open_browser@",
        cmd = {
            "OpenBrowser",
            "OpenBrowserSearch",
            "OpenBrowserSmartSearch",
        },
    })
    use({
        "@open_browser_github@",
        cmd = {
            "OpenGithubFile",
            "OpenGithubIssue",
            "OpenGithubPullReq",
            "OpenGithubProject",
        },
    })
    use({ "@plenary@", as = "plenary.nvim" })
    use({
        "@project@",
        config = function()
            require("yvim.plugin.project").config()
        end,
    })
    use({
        "@stickybuf@",
        config = function()
            require("yvim.plugin.stickybuf").config()
        end,
    })
    use({
        "@web_devicons@",
        as = "nvim-web-devicons",
        config = function()
            require("yvim.plugin.web-devicons").config()
        end,
        module = "nvim-web-devicons",
    })

    -- UI
    use({
        "@bufferline@",
        requires = "nvim-web-devicons",
        config = function()
            require("yvim.plugin.bufferline").config()
        end,
    })
    use({
        "@diffview@",
        requires = { "nvim-web-devicons", "plenary.nvim" },
        setup = function()
            require("yvim.plugin.diffview").setup()
        end,
        config = function()
            require("yvim.plugin.diffview").config()
        end,
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    })
    use({
        "@dressing@",
        config = function()
            require("yvim.plugin.dressing").config()
        end,
    })
    use({
        "@gitsigns@",
        config = function()
            require("yvim.plugin.gitsigns").config()
        end,
    })
    -- HACK: Preventing indent-blankline.nvim from overriding colorscheme
    use({
        "@indent_blankline@",
        setup = function()
            vim.g.__indent_blankline_setup_completed = true
        end,
        config = function()
            require("yvim.plugin.indent-blankline").config()
        end,
        event = "VimEnter *",
    })
    use({
        "@lualine@",
        requires = "nvim-web-devicons",
        config = function()
            require("yvim.plugin.lualine").config()
        end,
    })
    use({
        "@telescope@",
        as = "telescope.nvim",
        config = function()
            require("yvim.plugin.telescope").config()
        end,
        cmd = "Telescope",
        module = { "telescope", "telescope.builtins" },
    })
    use("@telescope_file_browser@")
    use("@telescope_fzy_native@")
    use("@telescope_luasnip@")
    use("@telescope_project@")
    use("@telescope_symbols@")
    use({
        "@toggleterm@",
        config = function()
            require("yvim.plugin.toggleterm").config()
        end,
        cmd = "ToggleTerm",
    })
    use({
        "@tokyonight@",
        setup = function()
            require("yvim.plugin.tokyonight").setup()
        end,
        config = function()
            require("yvim.plugin.tokyonight").config()
        end,
    })
    use({
        "@tree@",
        requires = "nvim-web-devicons",
        setup = function()
            require("yvim.plugin.tree").setup()
        end,
        config = function()
            require("yvim.plugin.tree").config()
        end,
        cmd = { "NvimTreeOpen", "NvimTreeToggle", "NvimTreeFocus" },
        module = "nvim-tree",
    })
    use({
        "@trouble@",
        as = "trouble.nvim",
        requires = "nvim-web-devicons",
        setup = function()
            require("yvim.plugin.trouble").setup()
        end,
        config = function()
            require("yvim.plugin.trouble").config()
        end,
        cmd = "Trouble",
    })
    use({
        "@todo_comments@",
        requires = "trouble.nvim",
        config = function()
            require("yvim.plugin.todo-comments").config()
        end,
    })
    use({
        "@virt_column@",
        config = function()
            require("yvim.plugin.virt-column").config()
        end,
    })
    use({
        "@which_key@",
        as = "which-key.nvim",
        config = function()
            require("yvim.plugin.which-key").config()
        end,
    })

    -- Edit
    use("@editorconfig@")
    use({
        "@hop@",
        config = function()
            require("yvim.plugin.hop").config()
        end,
        module = "hop",
    })
    use({
        "@autopairs@",
        config = function()
            require("yvim.plugin.autopairs").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    })
    use({
        "@nvimacs@",
        event = { "InsertEnter *", "CmdlineEnter *" },
    })
    use({
        "@visual_multi@",
        setup = function()
            require("yvim.plugin.visual-multi").setup()
        end,
        keys = "<Plug>(VM-",
    })

    -- Tree-sitter
    use({
        "@treesitter@",
        config = function()
            require("yvim.plugin.treesitter").config()
        end,
    })
    use("@treesitter_endwise@")
    use("@treesitter_refactor@")
    use("@treesitter_textobjects@")
    use("@treesitter_ts_autotag@")
    use("@treesitter_ts_context_commentstring@")
    use({
        "@spellsitter@",
        config = function()
            require("yvim.plugin.spellsitter").config()
        end,
    })

    -- LSP
    use({
        "@fidget@",
        config = function()
            require("yvim.plugin.fidget").config()
        end,
    })
    use({
        "@mason@",
        as = "mason.nvim",
        setup = function()
            require("yvim.plugin.mason").setup()
        end,
        config = function()
            require("yvim.plugin.mason").config()
        end,
    })
    use({
        "@mason_lspconfig@",
        as = "mason-lspconfig.nvim",
        requires = "mason.nvim",
        config = function()
            require("yvim.plugin.mason-lspconfig").config()
        end,
    })
    use({
        "@null_ls@",
        config = function()
            require("yvim.plugin.null-ls").config()
        end,
    })
    use({
        "@lspconfig@",
        requires = { "cmp-nvim-lsp", "mason-lspconfig.nvim" },
        setup = function()
            require("yvim.plugin.lspconfig").setup()
        end,
        config = function()
            require("yvim.plugin.lspconfig").config()
        end,
    })
    use({
        "@lsp_format@",
        config = function()
            require("yvim.plugin.lsp-format").config()
        end,
        module = "lsp-format",
    })
    use({
        "@lsp_signature@",
        config = function()
            require("yvim.plugin.lsp_signature").config()
        end,
        module = "lsp_signature",
    })
    use("@lua_dev@")
    use({
        "@symbols_outline@",
        setup = function()
            require("yvim.plugin.symbols-outline").setup()
        end,
        cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
    })

    -- Completion
    use({
        "@cmp@",
        as = "nvim-cmp",
        setup = function()
            require("yvim.plugin.cmp").setup()
        end,
        config = function()
            require("yvim.plugin.cmp").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    })
    use({ "@cmp_buffer@", after = "nvim-cmp", opt = true })
    use({ "@cmp_cmdline@", after = "nvim-cmp", opt = true })
    use({ "@cmp_luasnip@", after = "nvim-cmp", opt = true })
    use({
        "@cmp_nvim_lsp@",
        after = "nvim-cmp",
        opt = true,
        module = "cmp_nvim_lsp",
    })
    use({ "@cmp_nvim_lsp_signature_help@", after = "nvim-cmp", opt = true })
    use({ "@cmp_omni@", after = "nvim-cmp", opt = true })
    use({ "@cmp_path@", after = "nvim-cmp", opt = true })
    use({ "@cmp_spell@", after = "nvim-cmp", opt = true })
    use({ "@lspkind@", module = "lspkind" })
    use({
        "@copilot_cmp@",
        config = function()
            require("yvim.plugin.copilot").config()
        end,
    })
    use({ "@copilot_vim@", cmd = "Copilot" })
    use({ "@copilot_lua@", module = "copilot" })

    -- Session
    use({
        "@auto_session@",
        config = function()
            require("yvim.plugin.auto-session").config()
        end,
    })
    use({
        "@session_lens@",
        requires = { "auto-session", "telescope.nvim" },
        config = function()
            require("yvim.plugin.session-lens").config()
        end,
        cmd = "SearchSession",
    })

    -- Snippet
    use({
        "@luasnip@",
        config = function()
            require("yvim.plugin.luasnip").config()
        end,
        event = "InsertEnter *",
        module = "luasnip",
    })
    use({
        "@friendly_snippets@",
        config = function()
            require("yvim.plugin.friendly-snippets").config()
        end,
    })

    -- Tools
    use({
        "@neogit@",
        requires = "plenary.nvim",
        config = function()
            require("yvim.plugin.neogit").config()
        end,
        cmd = "Neogit",
    })
    use({
        "@octo@",
        requires = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        config = function()
            require("yvim.plugin.octo").config()
        end,
        cmd = "Octo",
    })
end
