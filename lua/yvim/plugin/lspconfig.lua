local M = {}

function M.config()
    local lsp = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    )
    local opts = {
        on_attach = require("yvim.lsp").setup_lsp,
        capabilities = capabilities,
        flags = { debouce_text_changes = 150 },
    }

    for _, server in ipairs(yvim.lsp.servers) do
        lsp[server].setup(opts)
    end
    lsp.sumneko_lua.setup(require("lua-dev").setup(opts))
end

return M
