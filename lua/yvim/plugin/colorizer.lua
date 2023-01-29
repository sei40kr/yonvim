local M = {}

function M.config()
    require("colorizer").setup({
        user_default_options = {
            mode = "virtualtext",
            css = true,
            tailwind = "lsp",
            sass = { enable = true },
        },
    })
end

return M
