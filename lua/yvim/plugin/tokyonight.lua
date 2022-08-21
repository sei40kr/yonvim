local M = {}

function M.setup()
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_lualine_bold = true
end

function M.config()
    vim.cmd([[colorscheme tokyonight]])
end

return M
