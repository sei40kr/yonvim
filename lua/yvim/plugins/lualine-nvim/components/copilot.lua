local lualine_utils = require("lualine.utils.utils")

return {
    function()
        return " "
    end,
    cond = function()
        local clients = vim.lsp.get_active_clients({ bufnr = 0 })

        for _, client in ipairs(clients) do
            if client.name == "copilot" and not client.is_stopped() then
                return true
            end
        end

        return false
    end,
    color = function()
        return {
            fg = lualine_utils.extract_color_from_hllist(
                "fg",
                { "CmpItemKindCopilot" },
                nil
            ),
        }
    end,
}
