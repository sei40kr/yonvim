local lualine_utils = require("lualine.utils.utils")

local pseudo_clients = { "null-ls", "copilot" }

local function get_lsp_actual_clients()
    local all_clients = vim.lsp.get_active_clients({ bufnr = 0 })

    return vim.tbl_filter(function(client)
        return not vim.tbl_contains(pseudo_clients, client.name)
    end, all_clients)
end

return {
    function()
        return "  LSP"
    end,
    cond = function()
        return #get_lsp_actual_clients() > 0
    end,
    color = function()
        local actual_clients = get_lsp_actual_clients()
        local hl_name = "healthSuccess"

        if #actual_clients == 0 then
            return nil
        end

        for _, client in ipairs(actual_clients) do
            if client.is_stopped() then
                hl_name = "healthError"
                break
            end
        end

        return {
            fg = lualine_utils.extract_color_from_hllist("fg", { hl_name }, nil),
        }
    end,
}
