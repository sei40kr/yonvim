local M = {}

function M.config()
    for severity, sign in pairs({
        Error = "󰅚",
        Hint = "󰌶",
        Info = "",
        Warn = "󰀪",
    }) do
        severity = "DiagnosticSign" .. severity
        vim.fn.sign_define(severity, { text = sign, texthl = severity, numhl = "" })
    end

    vim.diagnostic.config({
        underline = true,
        virtual_text = {
            spacing = 4,
            prefix = "●",
        },
        severity_sort = true,
    })
end

return M
