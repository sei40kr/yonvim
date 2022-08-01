local M = {}

function M.config()
    local lsp = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    )
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    local base_opts = {
        on_attach = require("yvim.lsp").on_attach,
        capabilities = capabilities,
        flags = { debouce_text_changes = 150 },
    }

    for server, extra_opts in pairs(yvim.lsp.servers) do
        local opts = base_opts
        if #extra_opts ~= 0 then
            opts = vim.tbl_deep_extend("force", base_opts, extra_opts)
        end

        lsp[server].setup(opts)
    end
    lsp.sumneko_lua.setup(require("lua-dev").setup(base_opts))
end

return M
