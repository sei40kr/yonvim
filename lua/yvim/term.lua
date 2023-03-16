local M = {}

function M.load_keymaps()
    -- Escape sequence
    vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })
end

return M
