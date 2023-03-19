local M = {}

function M.config(opts)
    require("mini.surround").setup(opts)

    vim.keymap.set("n", "yss", "ys_", { remap = true })
    vim.keymap.del("x", "ys")
    vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add("visual")<CR>]], {
        silent = true,
    })
end

return M
