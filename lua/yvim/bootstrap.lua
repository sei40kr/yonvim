local M = {}

function M.init()
    require("yvim.config").load()

    require("yvim.packer").init()

    require("yvim.core").setup()
    require("yvim.session").setup()
    require("yvim.treesitter").setup()
    require("yvim.edit").setup()
    require("yvim.lsp").setup()
    require("yvim.snippet").setup()
    require("yvim.completion").setup()
    require("yvim.terminal").setup()
    require("yvim.tools").setup()
    require("yvim.ui").setup()

    require("yvim.core").config()
    require("yvim.session").config()
    require("yvim.treesitter").config()
    require("yvim.edit").config()
    require("yvim.lsp").config()
    require("yvim.snippet").config()
    require("yvim.completion").config()
    require("yvim.terminal").config()
    require("yvim.tools").config()
    require("yvim.ui").config()

    require("yvim.core.keymap").load()
end

return M
