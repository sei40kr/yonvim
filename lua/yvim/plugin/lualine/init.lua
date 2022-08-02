local M = {}

local pseudo_lsp_clients = {
    copilot = true,
    ["null-ls"] = true,
}

function M.config()
    local evil_lualine = require("yvim.plugin.lualine.evil-lualine")

    require("lualine").setup({
        options = vim.tbl_deep_extend("force", {
            disabled_filetypes = { "NvimTree" },
        }, evil_lualine.options),
        sections = evil_lualine.sections,
        inactive_sections = evil_lualine.inactive_sections,
    })
end

return M
