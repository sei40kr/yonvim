local M = {}

function M.config()
    local null_ls = require("null-ls")

    null_ls.setup({
        sources = yvim.null_ls.sources,
        on_attach = function(client, bufnr)
            require("yvim.lsp").on_attach(client, bufnr)
        end,
    })
end

return M
