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
        enabled = yvim.completion.copilot.enable,
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
            require("yvim.plugin.mini-surround").config(opts)
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
}
