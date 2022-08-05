local M = {}

function M.setup()
    local keymaps = require("yvim.util.keymaps")

    keymaps:set_leader("n", { v = "Expand region" })
end

function M.config()
    -- spellsitter.nvim
    require("yvim.plugin.spellsitter").config()

    -- nvim-treesitter
    require("yvim.plugin.treesitter").config()
end

return M
