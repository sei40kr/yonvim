local M = {}

function M.config()
    require("lualine").setup(vim.tbl_deep_extend("force", {
        options = {
            disabled_filetypes = {
                "DiffviewFiles",
                "help",
                "man",
                "NvimTree",
                "Outline",
                "qf",
                "toggleterm",
                "Trouble",
            },
        },
    }, require("yvim.plugin.lualine.doom")))
end

return M
