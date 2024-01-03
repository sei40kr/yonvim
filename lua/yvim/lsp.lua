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

    local augroup = vim.api.nvim_create_augroup("yonvim_lsp", {})
    vim.api.nvim_create_autocmd("LspAttach", {
        group = augroup,
        callback = function(args)
            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            require("yvim.lsp").on_attach(client, bufnr)
        end,
    })
end

local function get_keymaps()
    local keymaps = {
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

    if require("yvim.utils.plugin").has("trouble.nvim") then
        table.insert(keymaps, {
            "gd",
            "<Cmd>Trouble lsp_definitions<CR>",
            desc = "Goto definition",
            has = "definition",
        })
        table.insert(keymaps, {
            "gi",
            "<Cmd>Trouble lsp_implementations<CR>",
            desc = "Find implementations",
            has = "implementation",
        })
        table.insert(keymaps, {
            "gr",
            "<Cmd>Trouble lsp_references<CR>",
            desc = "Jump to references",
            has = "references",
        })
        table.insert(keymaps, {
            "<Leader>ct",
            "<Cmd>Trouble lsp_type_definitions<CR>",
            desc = "Find type definition",
            has = "typeDefinition",
        })
        table.insert(keymaps, {
            "<Leader>cx",
            "<Cmd>Trouble document_diagnostics<CR>",
            desc = "List errors in buffer",
        })
        table.insert(keymaps, {
            "<Leader>cX",
            "<Cmd>Trouble workspace_diagnostics<CR>",
            desc = "List errors in workspace",
        })
    else
        table.insert(keymaps, {
            "gd",
            vim.lsp.buf.definition,
            desc = "Goto definition",
            has = "definition",
        })
        table.insert(keymaps, {
            "gi",
            vim.lsp.buf.implementation,
            desc = "Find implementations",
            has = "implementation",
        })
        table.insert(keymaps, {
            "gr",
            vim.lsp.buf.references,
            desc = "Jump to references",
            has = "references",
        })
        table.insert(keymaps, {
            "<Leader>ct",
            vim.lsp.buf.type_definition,
            desc = "Find type definition",
            has = "typeDefinition",
        })
    end

    return keymaps
end

local _keymaps = get_keymaps()

function M.on_attach(client, buffer)
    for _, keymap in ipairs(_keymaps) do
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
