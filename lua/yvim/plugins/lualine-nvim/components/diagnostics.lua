local lualine_utils = require("lualine.utils.utils")

local function get_highest_severity(diagnostics)
    local highest_severity = vim.diagnostic.severity.HINT

    if #diagnostics == 0 then
        return nil
    end

    for _, diagnostic in ipairs(diagnostics) do
        if diagnostic.severity < highest_severity then
            highest_severity = diagnostic.severity
        end
    end

    return highest_severity
end

local icons_by_severity = {
    [vim.diagnostic.severity.ERROR] = " ",
    [vim.diagnostic.severity.WARN] = " ",
    [vim.diagnostic.severity.INFO] = " ",
    [vim.diagnostic.severity.HINT] = " ",
}

local hl_names_by_severity = {
    [vim.diagnostic.severity.ERROR] = "DiagnosticError",
    [vim.diagnostic.severity.WARN] = "DiagnosticWarn",
    [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
    [vim.diagnostic.severity.HINT] = "DiagnosticHint",
};

return {
    function()
        if vim.diagnostic.is_disabled() then
            return " "
        end

        local diagnostics = vim.diagnostic.get(0)
        local highest_severity = get_highest_severity(diagnostics)
        local count = 0

        if highest_severity == nil then
            return " "
        end

        for _, diagnostic in ipairs(diagnostics) do
            if diagnostic.severity == highest_severity then
                count = count + 1
            end
        end

        return icons_by_severity[highest_severity] .. " " .. count
    end,
    cond = function()
        return require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/diagnostic")
    end,
    color = function()
        local hl_name

        if vim.diagnostic.is_disabled() then
            hl_name = "Comment"
        else
            local diagnostics = vim.diagnostic.get(0)
            local highest_severity = get_highest_severity(diagnostics)

            if highest_severity == nil then
                hl_name = "DiagnosticOk"
            else
                hl_name = hl_names_by_severity[highest_severity]
            end
        end

        return {
            fg = lualine_utils.extract_color_from_hllist(
                "fg",
                { hl_name },
                nil
            ),
        }
    end,
}
