local M = {}

function M.config()
    local keymap = require("yvim.util.keymap")

    require("toggleterm").setup({
        open_mapping = "<NOP>",
        shade_terminals = false,
        insert_mappings = false,
    })

    keymap:set_for_ft(
        "toggleterm",
        "n",
        { q = { "<Cmd>ToggleTerm<CR>", "Quit" } }
    )
end

return M
