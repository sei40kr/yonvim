local config_opts = require("yvim.config").opts

return {
    {
        dir = "@autopairs@",
        opts = {
            check_ts = true,
            map_c_h = true,
            map_c_w = true,
        },
        main = "nvim-autopairs",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },

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
        },
        init = function()
            require("yvim.plugin.cmp").init()
        end,
        config = function()
            require("yvim.plugin.cmp").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    },
    { dir = "@cmp_under_comparator@" },
    { dir = "@lspkind@" },
    {
        import = "yvim.plugins.coding.extras.copilot",
        enabled = config_opts.completion.copilot.enable,
    },

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

    {
        dir = "@mini_comment@",
        opts = {},
        main = "mini.comment",
    },

    {
        dir = "@mini_surround@",
        opts = {
            mappings = {
                add = "ys",
                delete = "ds",
                find = "",
                find_left = "",
                highlight = "",
                replace = "cs",
                update_n_lines = "",
                suffix_last = "",
                suffix_next = "",
            },
            search_method = "cover_or_next",
        },
        config = function(_, opts)
            require("mini.surround").setup(opts)

            vim.keymap.set("n", "yss", "ys_", { remap = true })
            vim.keymap.del("x", "ys")
            vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add("visual")<CR>]], { silent = true, })
        end,
    },

    {
        dir = "@nvimacs@",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },

    {
        dir = "@visual_multi@",
        init = function()
            require("yvim.plugin.visual-multi").init()
        end,
        keys = "<Plug>VM-",
    },

    {
        dir = "@yanky@",
        dependencies = { "telescope.nvim" },
        opts = function()
            local mapping = require("yanky.telescope.mapping")

            return {
                picker = {
                    telescope = {
                        use_default_mappings = false,
                        mappings = { default = mapping.put("p") },
                    },
                },
                highlight = { timer = 150 },
            }
        end,
        keys = {
            { "y",  "<Plug>(YankyYank)",       mode = { "n", "x" }, desc = "Yank text" },
            { "p",  "<Plug>(YankyPutAfter)",   mode = { "n", "x" }, desc = "Put yanked text after cursor" },
            { "P",  "<Plug>(YankyPutBefore)",  mode = { "n", "x" }, desc = "Put yanked text before cursor" },
            { "gp", "<Plug>(YankyGPutAfter)",  mode = { "n", "x" }, desc = "Put yanked text after selection" },
            { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before selection" },
            {
                "<Leader>iy",
                function()
                    require("telescope").extensions.yank_history.yank_history({})
                end,
                mode = { "n", "x" },
                desc = "From clipboard",
            },
            {
                "<M-Space>iy",
                function()
                    require("telescope").extensions.yank_history.yank_history({})
                end,
                mode = "i",
                desc = "From clipboard",
            },
        },
        main = "yanky",
    }
}
