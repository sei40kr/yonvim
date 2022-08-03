local M = {}

function M.config()
    require("lualine").setup(vim.tbl_deep_extend("force", {
        options = {
            disabled_filetypes = { "NvimTree" },
        },
    }, require("yvim.plugin.lualine.evil")))
end

return M
