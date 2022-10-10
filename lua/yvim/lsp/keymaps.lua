local M = {}

function M.load(client, buffer)
    local keymap = require("yvim.util.keymap")

    -- Call hierarchy
    if client.resolved_capabilities.call_hierarchy then
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
    if client.resolved_capabilities.code_action then
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
    if client.resolved_capabilities.document_formatting then
        keymap:set_buf_leader(buffer, "n", {
            cf = { vim.lsp.buf.formatting, "Format buffer" },
        })
    end

    -- Document range formatting
    if client.resolved_capabilities.document_range_formatting then
        keymap:set_buf_leader(buffer, "x", {
            cf = {
                ":lua vim.lsp.buf.range_formatting()<CR>",
                "Format region",
            },
        })
    end

    -- Document symbol
    if client.resolved_capabilities.document_symbol then
        keymap:set_buf_leader(buffer, "n", {
            cS = {
                "<Cmd>SymbolsOutlineOpen<CR>",
                "Symbols",
            },
        })
    end

    -- Find references
    if client.resolved_capabilities.find_references then
        vim.keymap.set(
            "n",
            "gD",
            "<Cmd>Trouble lsp_references<CR>",
            { buffer = buffer }
        )
    end

    -- Go to definition
    if client.resolved_capabilities.goto_definition then
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buffer })
    end

    -- Hover
    if client.resolved_capabilities.hover then
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buffer })
    end

    -- Implementation
    if client.resolved_capabilities.implementation then
        keymap:set_buf_leader(buffer, "n", {
            ci = { vim.lsp.buf.implementation, "Find implementations" },
        })
    end

    -- Rename
    if client.resolved_capabilities.rename then
        keymap:set_buf_leader(buffer, "n", {
            cr = { vim.lsp.buf.rename, "LSP Rename" },
        })
    end

    -- Type definition
    if client.resolved_capabilities.type_definition then
        keymap:set_buf_leader(buffer, "n", {
            ct = { vim.lsp.buf.type_definition, "Find type definition" },
        })
    end

    -- Workspace symbol
    if client.resolved_capabilities.workspace_symbol then
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
