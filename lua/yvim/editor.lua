local M = {}

local function insert_newline_above()
    local lines = {}

    for _ = 1, vim.v.count1 do
        table.insert(lines, "")
    end

    vim.api.nvim_put(lines, "l", false, true)
end

local function insert_newline_below()
    local pos = vim.api.nvim_win_get_cursor(0)
    local lines = {}

    for _ = 1, vim.v.count1 do
        table.insert(lines, "")
    end

    vim.api.nvim_put(lines, "l", true, false)
    vim.api.nvim_win_set_cursor(0, pos)
end

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set("n", {
        ["[<Space>"] = { insert_newline_above, "Insert newline above" },
        ["]<Space>"] = { insert_newline_below, "Insert newline below" },
        ["[c"] = "Previous comment",
        ["]c"] = "Next comment",
    })
end

return M
