local M = {}

function M.config()
    require("which-key").setup({
        key_labels = {
            ["<space>"] = "SPC",
            ["<cr>"] = "RET",
            ["<tab>"] = "TAB",
        },
        icons = {
            breadcrumb = "",
            separator = "",
        },
    })

    require("yvim.util.keymap"):load()
end

return M
