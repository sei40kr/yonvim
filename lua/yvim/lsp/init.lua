local M = {}

function M.setup()
    local special_buffer = require("yvim.util.special_buffer")

    -- symbols-outline.nvim
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        show_guides = false,
        position = "left",
        width = 35,
        -- TODO: Customize icons
        symbols = {},
    }
    special_buffer.register_filetype("Outline")
end

function M.config()
    -- fidget.nvim
    require("yvim.plugin.fidget").config()

    -- mason.nvim
    require("yvim.plugin.mason").config()

    -- mason-lspconfig.nvim
    require("yvim.plugin.mason-lspconfig").config()

    -- nvim-lspconfig
    require("yvim.plugin.lspconfig").config()

    -- null-ls.nvim
    require("yvim.plugin.null-ls").config()

    -- lsp-format.nvim
    if yvim.format.format_on_save then
        require("yvim.plugin.lsp-format").config()
    end

    for severity, sign in pairs({
        Error = "",
        Hint = "",
        Info = "",
        Warn = "",
    }) do
        local name = "DiagnosticSign" .. severity
        vim.fn.sign_define(name, { text = sign, texthl = name, numhl = "" })
    end

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics,
        {
            underline = true,
            virtual_text = {
                spacing = 4,
                prefix = "●",
            },
            severity_sort = true,
        }
    )
end

function M.on_attach(client, buffer)
    local keymap = require("yvim.util.keymap")

    -- Diagnostic
    keymap.buf_set_leader(buffer, "n", {
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
    keymap.buf_set(buffer, "n", {
        ["[e"] = { vim.diagnostic.goto_prev, "Jump to previous error" },
        ["]e"] = { vim.diagnostic.goto_next, "Jump to next error" },
    })

    -- Code action
    if client.resolved_capabilities.code_action then
        keymap.buf_set_leader(buffer, "n", {
            ca = {
                function()
                    require("telescope.builtin").lsp_code_actions()
                end,
                "Execute code action",
            },
        })
        keymap.buf_set_leader(buffer, "x", {
            ca = {
                ':lua require("telescope.builtin").lsp_range_code_actions()<CR>',
                "Execute code action",
            },
        })
    end

    if client.resolved_capabilities.completion then
        vim.api.nvim_buf_set_option(
            buffer,
            "omnifunc",
            "v:lua.vim.lsp.omnifunc"
        )
    end

    -- Document formatting
    if client.resolved_capabilities.document_formatting then
        keymap.buf_set_leader(buffer, "n", {
            cf = { vim.lsp.buf.formatting, "Format buffer" },
        })

        -- Formatting on save
        if yvim.format.format_on_save then
            require("lsp-format").on_attach(client)
        end
    end

    -- Document range formatting
    if client.resolved_capabilities.document_range_formatting then
        vim.api.nvim_buf_set_option(
            buffer,
            "formatexpr",
            "v:lua.vim.lsp.formatexpr()"
        )

        keymap.buf_set_leader(buffer, "x", {
            cf = {
                ":lua vim.lsp.buf.range_formatting()<CR>",
                "Format region",
            },
        })
    end

    -- Document symbol
    if client.resolved_capabilities.document_symbol then
        keymap.buf_set_leader(buffer, "n", {
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
        vim.keymap.set("n", "gd", function()
            require("telescope.builtin").lsp_definitions()
        end, { buffer = buffer })
    end

    -- Hover
    if client.resolved_capabilities.hover then
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buffer })
    end

    -- Implementation
    if client.resolved_capabilities.implementation then
        keymap.buf_set_leader(buffer, "n", {
            ci = {
                function()
                    require("telescope.builtin").lsp_implementations()
                end,
                "Find implementations",
            },
        })
    end

    -- Rename
    if client.resolved_capabilities.rename then
        keymap.buf_set_leader(buffer, "n", {
            cr = { vim.lsp.buf.rename, "LSP Rename" },
        })
    end

    -- Type definition
    if client.resolved_capabilities.type_definition then
        keymap.buf_set_leader(buffer, "n", {
            ct = {
                function()
                    require("telescope.builtin").lsp_type_definitions()
                end,
                "Find type definition",
            },
        })
    end

    -- Workspace symbol
    if client.resolved_capabilities.workspace_symbol then
        vim.api.nvim_buf_set_option(buffer, "tagfunc", "v:lua.vim.lsp.tagfunc")

        keymap.buf_set_leader(buffer, "n", {
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
