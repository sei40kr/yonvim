return {
    {
        "nvim-treesitter",
        dependencies = {
            "nvim-treesitter-endwise",
            "nvim-treesitter-pairs",
            "nvim-treesitter-refactor",
            "nvim-treesitter-textobjects",
            "nvim-ts-autotag",
        },
        opts = {
            parser_install_dir = vim.fn.stdpath("data") .. "/nvim-treesitter/parsers",

            endwise = { enable = true },
            highlight = {
                enable = true,
                disable = function(_lang, buf)
                    local max_filesize = 100 * 1024
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,
            },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Leader>v",
                    node_incremental = "v",
                    scope_incremental = false,
                    node_decremental = "V",
                },
            },
            pairs = {
                enable = true,
                highlight_pair_events = { "CursorMoved" },
                highlight_self = true,
                fallback_cmd_normal = "normal! %",
                keymaps = {},
            },
            refactor = {
                highlight_definitions = { enable = true },
                smart_rename = {
                    enable = true,
                    keymaps = { smart_rename = false },
                },
            },
            autotag = { enable = true },
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
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)

            require("yvim.util").on_very_lazy(function()
                require("which-key").register({
                    ["<Leader>v"] = "Expand region",
                    ["[c"] = "Previous comment",
                    ["]c"] = "Next comment",
                })
            end)
        end,
    },
}
