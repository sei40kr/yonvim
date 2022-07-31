local M = {}

function M.setup()
    -- symbols-outline.nvim
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        show_guides = false,
        position = "left",
        width = 35,
        -- TODO: Customize icons
        symbols = {},
    }
end

function M.config()
    local path = require("yvim.util.path")

    -- fidget.nvim
    require("fidget").setup({})

    -- nvim-lsp-installer
    require("nvim-lsp-installer").setup({
        ui = {
            icons = {
                server_installed = "●",
                server_pending = "●",
                server_uninstalled = "●",
            },
        },
        install_root_dir = path.join_paths(path.get_runtime_dir(), "lsp"),
    })

    -- nvim-lspconfig
    local nvim_lsp = require("lspconfig")

    local capabilities = require("cmp_nvim_lsp").update_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    )
    local opts = {
        on_attach = M.setup_lsp,
        capabilities = capabilities,
        flags = { debouce_text_changes = 150 },
    }
    for _, server in ipairs(yvim.lsp.servers) do
        nvim_lsp[server].setup(opts)
    end
    nvim_lsp.sumneko_lua.setup(require("lua-dev").setup(opts))

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

    -- null-ls.nvim
    local null_ls = require("null-ls")
    local formatters = vim.tbl_map(function(formatter)
        return null_ls.builtins.formatting[formatter]
    end, yvim.format.formatters)
    null_ls.setup({
        sources = {
            null_ls.builtins.code_actions.shellcheck,
            null_ls.builtins.diagnostics.shellcheck,
            unpack(formatters),
        },
        on_attach = function(client, bufnr)
            require("yvim.lsp").setup_lsp(client, bufnr)
        end,
    })

    -- lsp-format.nvim
    require("lsp-format").setup({})
end

function M.setup_lsp(client, bufnr)
    if client.resolved_capabilities.completion then
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    end

    if yvim.format.format_on_save then
        require("lsp-format").on_attach(client)
    end

    require("yvim.keymaps.lsp").setup(client, bufnr)
end

return M
