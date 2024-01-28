local M = {}

local function has_telescope_nvim()
    return require("yvim.utils.plugin").has("telescope.nvim")
end

local function has_trouble_nvim()
    return require("yvim.utils.plugin").has("trouble.nvim")
end

function M.all_diagnostics()
    if has_trouble_nvim() then
        require("trouble").open("workspace_diagnostics")
    elseif has_telescope_nvim() then
        require("telescope.builtin").diagnostics()
    else
        vim.diagnostic.setqflist()
    end
end

function M.buffer_diagnostics()
    if has_trouble_nvim() then
        require("trouble").open("document_diagnostics")
    elseif has_telescope_nvim() then
        require("telescope.builtin").diagnostics({ bufnr = 0 })
    else
        vim.diagnostic.setloclist()
    end
end

function M.code_action()
    if
        require("yvim.utils.lsp").does_any_lsp_client_support(
            "textDocument/codeAction"
        )
    then
        if require("yvim.utils.plugin").has("actions-preview.nvim") then
            require("actions-preview").code_actions()
        else
            vim.lsp.buf.code_action()
        end
    else
        vim.notify("No handler for code actions", vim.log.levels.WARN)
    end
end

function M.format_buffer()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/formatting") then
        vim.lsp.buf.format({ async = true })
    else
        vim.notify("No handler for formatting", vim.log.levels.WARN)
    end
end

function M.format_range()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/rangeFormatting") then
        vim.lsp.buf.format({ async = true })
    else
        vim.notify("No handler for range formatting", vim.log.levels.WARN)
    end
end

function M.hover()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/hover") then
        vim.lsp.buf.hover()
    else
        vim.notify("No handler for hover", vim.log.levels.WARN)
    end
end

function M.incoming_calls()
    if require("yvim.utils.lsp").does_any_lsp_client_support("callHierarchy/incomingCalls") then
        if has_telescope_nvim() then
            require("telescope.builtin").lsp_incoming_calls()
        else
            vim.lsp.buf.incoming_calls()
        end
    else
        vim.notify("No handler for incoming calls", vim.log.levels.WARN)
    end
end

function M.outgoing_calls()
    if require("yvim.utils.lsp").does_any_lsp_client_support("callHierarchy/outgoingCalls") then
        if has_telescope_nvim() then
            require("telescope.builtin").lsp_outgoing_calls()
        else
            vim.lsp.buf.outgoing_calls()
        end
    else
        vim.notify("No handler for outgoing calls", vim.log.levels.WARN)
    end
end

function M.rename()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/rename") then
        vim.lsp.buf.rename()
    elseif require("yvim.utils.treesitter").is_highlight_enabled(0) then
        require("nvim-treesitter-refactor.smart_rename").smart_rename()
    else
        vim.notify("No handler for rename", vim.log.levels.WARN)
    end
end

function M.definition()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/definition") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_definitions")
        elseif has_telescope_nvim() then
            require("telescope.builtin").lsp_definitions()
        else
            vim.lsp.buf.definition()
        end
    else
        vim.notify("No handler for definition", vim.log.levels.WARN)
    end
end

function M.implementation()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/implementation") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_implementations")
        elseif has_telescope_nvim() then
            require("telescope.builtin").lsp_implementations()
        else
            vim.lsp.buf.implementation()
        end
    else
        vim.notify("No handler for implementation", vim.log.levels.WARN)
    end
end

function M.references()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/references") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_references")
        elseif has_telescope_nvim() then
            require("telescope.builtin").lsp_references()
        else
            vim.lsp.buf.references()
        end
    else
        vim.notify("No handler for references", vim.log.levels.WARN)
    end
end

function M.type_definition()
    if require("yvim.utils.lsp").does_any_lsp_client_support("textDocument/typeDefinition") then
        if has_trouble_nvim() then
            require("trouble").open("lsp_type_definitions")
        elseif has_telescope_nvim() then
            require("telescope.builtin").lsp_type_definitions()
        else
            vim.lsp.buf.type_definition()
        end
    else
        vim.notify("No handler for type definition", vim.log.levels.WARN)
    end
end

function M.workspace_symbol()
    if require("yvim.utils.lsp").does_any_lsp_client_support("workspace/symbol") then
        if has_telescope_nvim() then
            require("telescope.builtin").lsp_workspace_symbols()
        else
            vim.lsp.buf.workspace_symbol()
        end
    else
        vim.notify("No handler for workspace symbol", vim.log.levels.WARN)
    end
end

return M
