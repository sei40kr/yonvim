local M = {}

function M.setup(client, buffer)
    local keymap = require("yvim.utils.keymap")

    keymap.set_buflocal_leader(buffer, "n", {
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

    keymap.set_buflocal(buffer, "n", {
        ["[e"] = { vim.diagnostic.goto_prev, "Jump to previous error" },
        ["]e"] = { vim.diagnostic.goto_next, "Jump to next error" },
    })

    if client.resolved_capabilities.code_action then
        keymap.set_buflocal_leader(buffer, "n", {
            ca = {
                function()
                    require("telescope.builtin").lsp_code_actions()
                end,
                "Execute code action",
            },
        })
        keymap.set_buflocal_leader(buffer, "x", {
            ca = {
                ':lua require("telescope.builtin").lsp_range_code_actions()<CR>',
                "Execute code action",
            },
        })
    end

    if client.resolved_capabilities.document_formatting then
        keymap.set_buflocal_leader(buffer, "n", {
            cf = { vim.lsp.buf.formatting, "Format buffer" },
        })
    end

    if client.resolved_capabilities.document_range_formatting then
        keymap.set_buflocal_leader(buffer, "x", {
            cf = {
                ":lua vim.lsp.buf.range_formatting()<CR>",
                "Format region",
            },
        })
    end

    if client.resolved_capabilities.find_references then
        vim.keymap.set(
            "n",
            "gD",
            "<Cmd>Trouble lsp_references<CR>",
            { buffer = buffer }
        )
    end

    if client.resolved_capabilities.goto_definition then
        vim.keymap.set("n", "gd", function()
            require("telescope.builtin").lsp_definitions()
        end, { buffer = buffer })
    end

    if client.resolved_capabilities.hover then
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buffer })
    end

    if client.resolved_capabilities.implementation then
        keymap.set_buflocal_leader(buffer, "n", {
            ci = {
                function()
                    require("telescope.builtin").lsp_implementations()
                end,
                "Find implementations",
            },
        })
    end

    if client.resolved_capabilities.rename then
        keymap.set_buflocal_leader(buffer, "n", {
            cr = { vim.lsp.buf.rename, "LSP Rename" },
        })
    end

    if client.resolved_capabilities.type_definition then
        keymap.set_buflocal_leader(buffer, "n", {
            ct = {
                function()
                    require("telescope.builtin").lsp_type_definitions()
                end,
                "Find type definition",
            },
        })
    end

    if client.resolved_capabilities.workspace_symbol then
        keymap.set_buflocal_leader(buffer, "n", {
            cj = {
                function()
                    require("telescope.builtin").lsp_workspace_symbols()
                end,
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
