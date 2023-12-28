local M = {}

local config_opts = require("yvim.config").opts

function M.config()
    local lspconfig = require("lspconfig")

    require("lspconfig.ui.windows").default_options.border = config_opts.ui.border

    lspconfig.util.default_config = vim.tbl_extend(
        "force",
        lspconfig.util.default_config,
        {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            flags = { debouce_text_changes = 150 },
        }
    )

    for name, sign in pairs({
        Error = "󰅚",
        Hint = "󰌶",
        Info = "",
        Warn = "󰀪",
    }) do
        name = "DiagnosticSign" .. name
        vim.fn.sign_define(name, { text = sign, texthl = name, numhl = "" })
    end

    vim.diagnostic.config({
        underline = true,
        virtual_text = {
            spacing = 4,
            prefix = "●",
        },
        severity_sort = true,
    })

    for server, opts in pairs(config_opts.lsp.servers) do
        -- Setting up rust_analyzer here causes conflicts with rust-tools.nvim
        if server == "rust_analyzer" then
            goto continue
        end
        -- Setting up tsserver here causes conflicts with typescript.nvim
        if server == "tsserver" then
            goto continue
        end

        lspconfig[server].setup(opts)

        ::continue::
    end
end

return M
