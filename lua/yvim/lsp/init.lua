local M = {}

function M.setup()
    -- symbols-outline.nvim
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        show_guides = false,
        position = "left",
        width = 35,
        -- TODO: Customize icons
        symbols = {},
    }
end

function M.config()
    -- fidget.nvim
    require("yvim.plugin.fidget").config()

    -- mason.nvim
    require("yvim.plugin.mason").config()

    -- mason-lspconfig.nvim
    require("yvim.plugin.mason-lspconfig").config()

    -- nvim-lspconfig
    require("yvim.plugin.lspconfig").config()

    -- null-ls.nvim
    require("yvim.plugin.null-ls").config()

    -- lsp-format.nvim
    if yvim.format.format_on_save then
        require("yvim.plugin.lsp-format").config()
    end

    for severity, sign in pairs({
        Error = "",
        Hint = "",
        Info = "",
        Warn = "",
    }) do
        local name = "DiagnosticSign" .. severity
        vim.fn.sign_define(name, { text = sign, texthl = name, numhl = "" })
    end

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics,
        {
            underline = true,
            virtual_text = {
                spacing = 4,
                prefix = "●",
            },
            severity_sort = true,
        }
    )
end

function M.setup_lsp(client, bufnr)
    if client.resolved_capabilities.completion then
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    end

    if yvim.format.format_on_save then
        require("lsp-format").on_attach(client)
    end

    require("yvim.keymaps.lsp").setup(client, bufnr)
end

return M
