local M = {}

function M.load(client, buffer)
    local keymap = require("yvim.util.keymap")

    -- Call hierarchy
    if client.server_capabilities.callsProvider then
        keymap:set_buf_leader(buffer, "n", {
            cy = {
                vim.lsp.buf.incoming_calls,
                "Incoming call hierarchy",
            },
            cY = {
                vim.lsp.buf.outgoing_calls,
                "Outgoing call hierarchy",
            },
        })
    end

    -- Diagnostic
    keymap:set_buf_leader(buffer, "n", {
        c = {
            l = {
                name = "+lsp",
                F = {
                    name = "+folders",
                    a = { vim.lsp.buf.add_workspace_folder, "add folder" },
                    r = {
                        vim.lsp.buf.remove_workspace_folder,
                        "remove folder",
                    },
                },
            },
            x = {
                "<Cmd>Trouble document_diagnostics<CR>",
                "List errors in buffer",
            },
            X = {
                "<Cmd>Trouble workspace_diagnostics<CR>",
                "List errors in workspace",
            },
        },
    })
    keymap:set_for_buf(buffer, "n", {
        ["[e"] = { vim.diagnostic.goto_prev, "Jump to previous error" },
        ["]e"] = { vim.diagnostic.goto_next, "Jump to next error" },
    })

    -- Code action
    if client.server_capabilities.codeActionProvider then
        keymap:set_buf_leader(buffer, "n", {
            ca = { vim.lsp.buf.code_action, "Execute code action" },
        })
        keymap:set_buf_leader(buffer, "x", {
            ca = {
                ":lua vim.lsp.buf.range_code_action()<CR>",
                "Execute code action",
            },
        })
    end

    -- Document formatting
    if client.server_capabilities.documentFormattingProvider then
        keymap:set_buf_leader(buffer, "n", {
            cf = {
                function()
                    vim.lsp.buf.format({ async = true })
                end,
                "Format buffer"
            },
        })
    end

    -- Document range formatting
    if client.server_capabilities.documentRangeFormattingProvider then
        keymap:set_buf_leader(buffer, "x", {
            cf = {
                function()
                    vim.lsp.buf.format({ async = true })
                end,
                "Format region",
            },
        })
    end

    -- Document symbol
    if client.server_capabilities.documentSymbolProvider then
        keymap:set_buf_leader(buffer, "n", {
            cS = {
                "<Cmd>SymbolsOutlineOpen<CR>",
                "Symbols",
            },
        })
    end

    -- Find references
    if client.server_capabilities.referencesProvider then
        vim.keymap.set(
            "n",
            "gD",
            "<Cmd>Trouble lsp_references<CR>",
            { buffer = buffer }
        )
    end

    -- Go to definition
    if client.server_capabilities.definitionProvider then
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buffer })
    end

    -- Hover
    if client.server_capabilities.hoverProvider then
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buffer })
    end

    -- Implementation
    if client.server_capabilities.implementationProvider then
        keymap:set_buf_leader(buffer, "n", {
            ci = { vim.lsp.buf.implementation, "Find implementations" },
        })
    end

    -- Rename
    if client.server_capabilities.renameProvider then
        keymap:set_buf_leader(buffer, "n", {
            cr = { vim.lsp.buf.rename, "LSP Rename" },
        })
    end

    -- Type definition
    if client.server_capabilities.typeDefinitionProvider then
        keymap:set_buf_leader(buffer, "n", {
            ct = { vim.lsp.buf.type_definition, "Find type definition" },
        })
    end

    -- Workspace symbol
    if client.server_capabilities.workspaceSymbolProvider then
        keymap:set_buf_leader(buffer, "n", {
            cj = {
                vim.lsp.buf.workspace_symbol,
                "Jump to symbol in workspace",
            },
            cJ = {
                function()
                    require("telescope.builtin").lsp_dynamic_workspace_symbols()
                end,
                "Jump to symbol in all workspaces",
            },
        })
    end
end

return M
