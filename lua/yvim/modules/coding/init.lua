local buffer_util = require("yvim.utils.buffer")
local yonvim_config = require("yvim.config").get()

return {
    {
        "nvim-autopairs",
        opts = {
            disable_filetype = buffer_util.get_special_filetypes(),
            check_ts = true,
            map_c_h = true,
            map_c_w = true,
        },
        main = "nvim-autopairs",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },

    {
        "nvim-cmp",
        dependencies = {
            "cmp-cmdline",
            "cmp_luasnip",
            "cmp-nvim-lsp",
            "cmp-nvim-lsp-signature-help",
            "cmp-omni",
            "cmp-path",
            "cmp-spell",
        },
        init = function()
            buffer_util.add_special_filetypes({ "cmp_docs", "cmp_menu" })

            require("yvim.plugins.nvim-cmp").init()
        end,
        config = function()
            require("yvim.plugins.nvim-cmp").config()
        end,
        event = { "InsertEnter *", "CmdlineEnter *" },
    },
    { "cmp-under-comparator" },
    { "lspkind.nvim" },
    { import = "yvim.modules.coding.extras.copilot" },

    {
        "LuaSnip",
        dependencies = { "friendly-snippets" },
        config = function()
            require("yvim.plugins.luasnip").config()
        end,
        event = "InsertEnter *",
        module = "luasnip",
    },
    {
        "friendly-snippets",
        lazy = true,
        config = function()
            require("yvim.plugins.friendly-snippets").config()
        end,
    },

    {
        "mini.comment",
        opts = {},
        main = "mini.comment",
    },

    {
        "mini.surround",
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
        "nvimacs",
        event = { "InsertEnter *", "CmdlineEnter *" },
    },

    {
        "vim-visual-multi",
        init = function()
            require("yvim.plugins.vim-visual-multi").init()
        end,
        keys = "<Plug>(VM-",
    },

    {
        "yanky.nvim",
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
