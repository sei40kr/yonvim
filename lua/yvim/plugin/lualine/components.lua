local M = {}

local pseudo_lsp_clients = {
    copilot = true,
    ["null-ls"] = true,
}

-- Bar
M.bar = {
    function()
        return "▍"
    end,
    padding = 0,
}

-- LSP
M.lsp = {
    function()
        return " "
    end,
    cond = function()
        local clients = vim.tbl_filter(function(client)
            return pseudo_lsp_clients[client.name] == nil
        end, vim.lsp.buf_get_clients(0))

        return #clients > 0
    end,
}

return M
