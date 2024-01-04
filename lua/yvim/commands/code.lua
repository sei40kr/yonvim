local M = {}

local function does_any_lsp_client_support(method)
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })

    for _, client in ipairs(clients) do
        if client.supports_method(method) then
            return true
        end
    end

    return false
end

local function has_trouble_nvim()
    return require("yvim.utils.plugin").has("trouble.nvim")
end

function M.all_diagnostics()
    if has_trouble_nvim() then
        require("trouble").open("workspace_diagnostics")
    else
        -- TODO: Use quickfix list instead
        vim.notify("No viewer for all diagnostics", vim.log.levels.WARN)
    end
end

function M.buffer_diagnostics()
    if has_trouble_nvim() then
        require("trouble").open("document_diagnostics")
    else
        -- TODO: Use location list instead
        vim.notify("No viewer for buffer diagnostics", vim.log.levels.WARN)
    end
end

function M.code_action()
    if does_any_lsp_client_support("textDocument/codeAction") then
        vim.lsp.buf.code_action()
    else
        vim.notify("No handler for code actions", vim.log.levels.WARN)
    end
end

function M.format_buffer()
    if does_any_lsp_client_support("textDocument/formatting") then
        vim.lsp.buf.format({ async = true })
    else
        vim.notify("No handler for formatting", vim.log.levels.WARN)
    end
end

function M.format_range()
    if does_any_lsp_client_support("textDocument/rangeFormatting") then
        vim.lsp.buf.format({ async = true })
    else
        vim.notify("No handler for range formatting", vim.log.levels.WARN)
    end
end

function M.hover()
    if does_any_lsp_client_support("textDocument/hover") then
        vim.lsp.buf.hover()
    else
        vim.notify("No handler for hover", vim.log.levels.WARN)
    end
end

function M.incoming_calls()
    if does_any_lsp_client_support("callHierarchy/incomingCalls") then
        vim.lsp.buf.incoming_calls()
    else
        vim.notify("No handler for incoming calls", vim.log.levels.WARN)
    end
end

function M.outgoing_calls()
    if does_any_lsp_client_support("callHierarchy/outgoingCalls") then
        vim.lsp.buf.outgoing_calls()
    else
        vim.notify("No handler for outgoing calls", vim.log.levels.WARN)
    end
end

function M.rename()
    if does_any_lsp_client_support("textDocument/rename") then
        vim.lsp.buf.rename()
    else
        -- TODO: Use Treesitter rename instead if available
        vim.notify("No handler for rename", vim.log.levels.WARN)
    end
end

function M.definition()
    if does_any_lsp_client_support("textDocument/definition") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_definitions")
        else
            vim.lsp.buf.definition()
        end
    else
        vim.notify("No handler for definition", vim.log.levels.WARN)
    end
end

function M.implementation()
    if does_any_lsp_client_support("textDocument/implementation") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_implementations")
        else
            vim.lsp.buf.implementation()
        end
    else
        vim.notify("No handler for implementation", vim.log.levels.WARN)
    end
end

function M.references()
    if does_any_lsp_client_support("textDocument/references") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_references")
        else
            vim.lsp.buf.references()
        end
    else
        vim.notify("No handler for references", vim.log.levels.WARN)
    end
end

function M.type_definition()
    if does_any_lsp_client_support("textDocument/typeDefinition") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_type_definitions")
        else
            vim.lsp.buf.type_definition()
        end
    else
        vim.notify("No handler for type definition", vim.log.levels.WARN)
    end
end

function M.workspace_symbol()
    if does_any_lsp_client_support("workspace/symbol") then
        vim.lsp.buf.workspace_symbol()
    else
        vim.notify("No handler for workspace symbol", vim.log.levels.WARN)
    end
end

return M
