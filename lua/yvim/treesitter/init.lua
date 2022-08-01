local M = {}

function M.setup()
    require("yvim.util.keymap").set_leader("n", { v = "Expand region" })
end

function M.config()
    -- spellsitter.nvim
    require("yvim.plugin.spellsitter").config()

    -- nvim-treesitter
    require("yvim.plugin.treesitter").config()
end

return M
