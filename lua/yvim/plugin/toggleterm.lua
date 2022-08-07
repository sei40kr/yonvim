local M = {}

function M.config()
    local keymaps = require("yvim.util.keymaps")

    require("toggleterm").setup({
        open_mapping = "<NOP>",
        shade_terminals = false,
        insert_mappings = false,
    })

    keymaps:set_for_filetype(
        "toggleterm",
        "n",
        { q = { "<Cmd>ToggleTerm<CR>", "Quit" } }
    )
end

return M
