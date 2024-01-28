local M = {}

M.pseudo_client_names = { "copilot", "null-ls" }

function M.on_attach(callback)
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            callback(client, bufnr)
        end,
    })
end

function M.does_any_lsp_client_support(method)
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })

    for _, client in ipairs(clients) do
        -- NOTE: The pseudo LSP client `copilot` claims to support all methods,
        --  but it actually supports only `textDocument/completion`.
        if client.name == "copilot" then
            if method == "textDocument/completion" then
                return true
            end
        elseif client.supports_method(method) then
            return true
        end
    end

    return false
end

return M
