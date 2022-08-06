local M = {}

function M.setup()
    local special_buffer = require("yvim.util.special_buffer")

    -- symbols-outline.nvim
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        show_guides = false,
        position = "left",
        width = 35,
        -- TODO: Customize icons
        symbols = {},
    }
    special_buffer.register_filetype("Outline")

    local border_chars = require("yvim.config").get_border_chars("FloatBorder")
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover,
        { border = border_chars }
    )
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help,
        { border = border_chars }
    )
end

function M.config()
    -- fidget.nvim
    require("yvim.plugin.fidget").config()

    -- lsp-format.nvim
    if yvim.format.format_on_save then
        require("yvim.plugin.lsp-format").config()
    end

    -- lsp_signature.nvim
    require("yvim.plugin.lsp_signature").config()

    -- mason-lspconfig.nvim
    require("yvim.plugin.mason-lspconfig").config()

    -- nvim-lspconfig
    require("yvim.plugin.lspconfig").config()

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

function M.on_attach(client, buffer)
    if client.resolved_capabilities.completion then
        vim.api.nvim_buf_set_option(
            buffer,
            "omnifunc",
            "v:lua.vim.lsp.omnifunc"
        )
    end

    if client.resolved_capabilities.document_range_formatting then
        vim.api.nvim_buf_set_option(
            buffer,
            "formatexpr",
            "v:lua.vim.lsp.formatexpr()"
        )
    end

    if client.resolved_capabilities.workspace_symbol then
        vim.api.nvim_buf_set_option(buffer, "tagfunc", "v:lua.vim.lsp.tagfunc")
    end

    require("yvim.lsp.keymaps").load(client, buffer)

    if
        client.resolved_capabilities.document_formatting
        and yvim.format.format_on_save
    then
        require("lsp-format").on_attach(client)
    end
end

return M
