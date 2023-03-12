local M = {}

function M.init()
    vim.api.nvim_set_keymap(
        "n",
        "ys",
        'luaeval(\'require("mini.surround").operator("add")\')',
        { noremap = true, silent = true, expr = true }
    )
    vim.api.nvim_set_keymap(
        "x",
        "S",
        ':<C-u>lua MiniSurround.add("visual")<CR>',
        { noremap = true, silent = true }
    )
end

function M.config()
    require("mini.surround").setup({
        mappings = {
            add = "",
            delete = "ds",
            find = "",
            find_left = "",
            highlight = "",
            replace = "cs",
        },
    })
end

return M
