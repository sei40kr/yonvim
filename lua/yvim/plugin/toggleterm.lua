local M = {}

function M.config()
    local keymap = require("yvim.util.keymaps")

    require("toggleterm").setup({
        open_mapping = "<NOP>",
        shade_terminals = false,
        insert_mappings = false,
    })

    keymap:set_for_filetype(
        "toggleterm",
        "n",
        { q = { "<Cmd>ToggleTerm<CR>", "Quit" } }
    )
end

return M
