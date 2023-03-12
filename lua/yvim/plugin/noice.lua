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

    -- LSP Hover Doc Scrolling
    -- https://github.com/folke/noice.nvim#lsp-hover-doc-scrolling
    vim.keymap.set({ "n", "i", "s" }, "<C-f>", function()
        if not require("noice.lsp").scroll(4) then
            return "<c-f>"
        end
    end, { silent = true, expr = true })
    vim.keymap.set({ "n", "i", "s" }, "<C-b>", function()
        if not require("noice.lsp").scroll( -4) then
            return "<c-b>"
        end
    end, { silent = true, expr = true })
end

return M
