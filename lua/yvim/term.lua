local M = {}

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    -- Escape sequence
    vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })

    keymap:set_leader("n", {
        o = {
            t = { "<Cmd>ToggleTerm<CR>", "Toggle terminal popup" },
        },
    })
end

return M
