local M = {}

local z = require("yvim.ui.zindex")

function M.config()
    require("noice").setup({
        cmdline = { enabled = false },
        messages = { enabled = false },
        lsp = {
            hover = {
                opts = { zindex = z.LSP_HOVER },
            },
            signature = {
                opts = { zindex = z.LSP_SIGNATURE },
            },
            documentation = {
                opts = { border = yvim.ui.border },
            },
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        popupmenu = { backend = "cmp" },
        presets = { lsp_doc_border = true },
    })
end

return M
