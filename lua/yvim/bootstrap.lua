local M = {}

function M.init()
    require("yvim.config").load()

    require("yvim.packer").init()

    require("yvim.treesitter").setup()
    require("yvim.lsp").setup()

    require("yvim.core").config()
    require("yvim.treesitter").config()
    require("yvim.lsp").config()

    require("yvim.keymap").load()
end

return M
