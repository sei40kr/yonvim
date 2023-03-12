local M = {}

function M.init()
    -- disable built-in plugins
    vim.g.loaded_gzip = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_tohtml = 1
    vim.g.loaded_tutor = 1
    vim.g.loaded_zipPlugin = 1

    require("yvim.config").load()

    require("yvim.lazy").init()

    require("yvim.treesitter").setup()
    require("yvim.lsp").setup()

    require("yvim.core").config()
    require("yvim.treesitter").config()
    require("yvim.lsp").config()

    require("yvim.keymap").load()
end

return M
