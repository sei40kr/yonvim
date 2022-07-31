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
            require("yvim.lsp").on_attach(client, bufnr)
        end,
    })
end

return M
