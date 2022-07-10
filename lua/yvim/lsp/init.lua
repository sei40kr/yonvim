local M = {}

function M.setup_lsp(client, bufnr)
    if client.resolved_capabilities.completion then
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    end

    if yvim.format.format_on_save then
        require("lsp-format").on_attach(client)
    end

    require("yvim.keymaps.lsp").setup(client, bufnr)
end

function M.config()
    local nvim_lsp = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    )
    local opts = {
        on_attach = M.setup_lsp,
        capabilities = capabilities,
        flags = { debouce_text_changes = 150 },
    }
    for _, server in ipairs(yvim.lsp.servers) do
        nvim_lsp[server].setup(opts)
    end
    nvim_lsp.sumneko_lua.setup(require("lua-dev").setup(opts))

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

return M
