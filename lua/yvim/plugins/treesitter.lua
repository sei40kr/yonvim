return {
    {
        dir = "@treesitter@",
        dependencies = {
            { dir = "@treesitter_endwise@" },
            { dir = "@treesitter_refactor@" },
            { dir = "@treesitter_textobjects@" },
            { dir = "@treesitter_ts_autotag@" },
            { dir = "@treesitter_ts_context_commentstring@" },
        },
        opts = {
            endwise = { enable = true },
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Leader>v",
                    node_incremental = "v",
                    scope_incremental = "<Nop>",
                    node_decremental = "V",
                },
            },
            refactor = {
                highlight_definitions = { enable = true },
                smart_rename = {
                    enable = true,
                    keymaps = { smart_rename = "<Leader>cr" },
                },
            },
            autotag = { enable = true },
            context_commentstring = { enable = true },
            move = {
                enable = true,
                goto_next_start = {
                    ["]]"] = "@class.outer",
                    ["]c"] = "@comment.outer",
                    ["]m"] = "@function.outer",
                },
                goto_next_end = {
                    ["]["] = "@class.outer",
                    ["]M"] = "@function.outer",
                },
                goto_previous_start = {
                    ["[["] = "@class.outer",
                    ["[c"] = "@comment.outer",
                    ["[m"] = "@function.outer",
                },
                goto_previous_end = {
                    ["[]"] = "@class.outer",
                    ["[M"] = "@function.outer",
                },
            },
            rainbow = {
                enable = true,
                disable = { "help", "neo-tree", "toggleterm", "Trouble" },
            },
        },
        main = "nvim-treesitter.configs",
    },
}
