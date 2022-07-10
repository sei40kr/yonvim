local M = {}

function M.config()
    local null_ls = require("null-ls")

    local formatters = vim.tbl_map(function(formatter)
        return null_ls.builtins.formatting[formatter]
    end, yvim.format.formatters)

    null_ls.setup({
        sources = {
            null_ls.builtins.code_actions.shellcheck,
            null_ls.builtins.diagnostics.shellcheck,
            unpack(formatters),
        },
        on_attach = function(client, bufnr)
            if client.resolved_capabilities.completion then
                vim.api.nvim_buf_set_option(
                    bufnr,
                    "omnifunc",
                    "v:lua.vim.lsp.omnifunc"
                )
            end

            require("yvim.keymaps.lsp").setup(client, bufnr)
        end,
    })
end

return M
