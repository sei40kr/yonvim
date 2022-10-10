local M = {}

function M.init()
    require("yvim.config").load()

    require("yvim.packer").init()

    require("yvim.treesitter").setup()
    require("yvim.lsp").setup()

    require("yvim.treesitter").config()
    require("yvim.lsp").config()

    require("yvim.core.keymap").load()
end

return M
