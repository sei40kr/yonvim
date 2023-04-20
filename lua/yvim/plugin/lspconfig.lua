local M = {}

function M.init()
    require("yvim.util.special_buffer").register_filetype("lspinfo")
end

function M.config()
    local lsp = require("lspconfig")
    local windows = require("lspconfig.ui.windows")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
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

        -- setting up rust-analyzer here causes conflicts with rust-tools.nvim
        if server == "rust_analyzer" then
            goto continue
        end
        -- setting up tsserver here causes conflicts with typescript.nvim
        if server == "tsserver" then
            goto continue
        end

        lsp[server].setup(opts)

        ::continue::
    end

    local orig_windows_default_opts = windows.default_opts
    windows.default_opts = function(opts)
        opts = orig_windows_default_opts(opts)
        opts.border = yvim.ui.border
        return opts
    end
end

return M
