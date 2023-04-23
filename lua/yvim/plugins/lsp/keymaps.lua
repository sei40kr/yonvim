local M = {}

local _keymaps = nil

local function get_keymaps()
    local Util = require("yvim.util")

    if not _keymaps then
        _keymaps = {
            { "<Leader>cy", vim.lsp.buf.incoming_calls, desc = "Incoming call hierarchy", has = "calls" },
            { "<Leader>cY", vim.lsp.buf.outgoing_calls, desc = "Outgoing call hierarchy", has = "calls" },
            {
                "<Leader>ca",
                vim.lsp.buf.code_action,
                mode = { "n", "v" },
                desc = "Execute code action",
                has = "codeAction"
            },
            { "[e", vim.diagnostic.goto_prev, desc = "Jump to previous error" },
            { "]e", vim.diagnostic.goto_next, desc = "Jump to next error" },
            {
                "<Leader>cf",
                function()
                    vim.lsp.buf.format({ async = true })
                end,
                desc = "Format buffer",
                has = "documentFormatting",
            },
            {
                "<Leader>cf",
                function()
                    vim.lsp.buf.format({ async = true })
                end,
                mode = "v",
                desc = "Format region",
                has = "documentRangeFormatting"
            },
            { "K",          vim.lsp.buf.hover,  desc = "Hover",  has = "hover" },
            { "<Leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
            {
                "<Leader>cj",
                vim.lsp.buf.workspace_symbol,
                desc = "Jump to symbol in workspace",
                has =
                "workspaceSymbol"
            },
            { "<Leader>clFa", vim.lsp.buf.add_workspace_folder,    desc = "Add workspace folder" },
            { "<Leader>clFr", vim.lsp.buf.remove_workspace_folder, desc = "Remove workspace folder" },
        }

        if Util.has("trouble.nvim") then
            table.insert(_keymaps, {
                "gd",
                "<Cmd>Trouble lsp_definitions<CR>",
                desc = "Goto definition",
                has = "definition",
            })
            table.insert(_keymaps, {
                "gi",
                "<Cmd>Trouble lsp_implementations<CR>",
                desc = "Find implementations",
                has = "implementation",
            })
            table.insert(_keymaps, {
                "gr",
                "<Cmd>Trouble lsp_references<CR>",
                desc = "Jump to references",
                has = "references",
            })
            table.insert(_keymaps, {
                "<Leader>ct",
                "<Cmd>Trouble lsp_type_definitions<CR>",
                desc = "Find type definition",
                has = "typeDefinition",
            })
            table.insert(_keymaps, {
                "<Leader>cx",
                "<Cmd>Trouble document_diagnostics<CR>",
                desc = "List errors in buffer",
            })
            table.insert(_keymaps, {
                "<Leader>cX",
                "<Cmd>Trouble workspace_diagnostics<CR>",
                desc = "List errors in workspace",
            })
        else
            table.insert(_keymaps, {
                "gd",
                vim.lsp.buf.definition,
                desc = "Goto definition",
                has = "definition",
            })
            table.insert(_keymaps, {
                "gi",
                vim.lsp.buf.implementation,
                desc = "Find implementations",
                has = "implementation",
            })
            table.insert(_keymaps, {
                "gr",
                vim.lsp.buf.references,
                desc = "Jump to references",
                has = "references",
            })
            table.insert(_keymaps, {
                "<Leader>ct",
                vim.lsp.buf.type_definition,
                desc = "Find type definition",
                has = "typeDefinition",
            })
        end
    end

    return _keymaps
end

function M.on_attach(client, buffer)
    for _, keymap in ipairs(get_keymaps()) do
        if not keymap.has or client.server_capabilities[keymap.has .. "Provider"] then
            local lhs, rhs = keymap[1], keymap[2]
            local opts = {
                silent = keymap.silent ~= false,
                buffer = buffer,
                desc = keymap.desc,
            }
            vim.keymap.set(keymap.mode or "n", lhs, rhs, opts)
        end
    end
end

return M
