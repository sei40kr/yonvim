local M = {}

local pseudo_clients = {
    copilot = true,
    ["null-ls"] = true,
}

return {
    function()
        return " "
    end,
    cond = function()
        local clients = vim.tbl_filter(function(client)
            return pseudo_clients[client.name] == nil
        end, vim.lsp.buf_get_clients(0))
        return #clients > 0
    end,
    color = "healthSuccess",
}
