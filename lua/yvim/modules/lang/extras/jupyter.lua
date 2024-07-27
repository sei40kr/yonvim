return {
    {
        "molten-nvim",
        init = function()
            vim.g.molten_auto_open_output = false
            vim.g.molten_cover_empty_lines = true
            vim.g.molten_virt_text_output = true
        end,
        module = "molten",
    },

    {
        "NotebookNavigator.nvim",
        dependencies = { "molten-nvim" },
        opts = {
            show_hydra_hint = false,
            hydra_keys = {
                comment = nil,
                run = nil,
                run_and_move = nil,
                move_up = nil,
                move_down = nil,
                add_cell_above = nil,
                add_cell_below = nil,
            },
            repl_provider = "molten",
        },
        keys = {
            {
                "[c",
                function()
                    require("notebook-navigator").move_cell("u")
                end,
                ft = { "julia", "python", "r" },
            },
            {
                "]c",
                function()
                    require("notebook-navigator").move_cell("d")
                end,
                ft = { "julia", "python", "r" },
            },
            {
                "<LocalLeader>jr",
                function()
                    require("notebook-navigator").run_cell()
                end,
                ft = { "julia", "python", "r" },
            },
            {
                "<C-CR>",
                function()
                    require("notebook-navigator").run_and_move()
                end,
                ft = { "julia", "python", "r" },
            },
        },
    },
}
