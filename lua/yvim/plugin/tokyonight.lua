local M = {}

function M.config()
    require("tokyonight").setup({
        style = "night",
        styles = {
            comments = { italic = true },
        },
        lualine_bold = true,
    })

    vim.cmd([[colorscheme tokyonight]])
end

return M
