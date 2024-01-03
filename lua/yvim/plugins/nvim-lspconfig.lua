local M = {}

function M.config()
    local yonvim_config = require("yvim.config").get()

    local lspconfig = require("lspconfig")

    require("lspconfig.ui.windows").default_options.border = yonvim_config.ui.border

    lspconfig.util.default_config = vim.tbl_extend(
        "force",
        lspconfig.util.default_config,
        {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            flags = { debouce_text_changes = 150 },
        }
    )

    for server, opts in pairs(yonvim_config.lsp.servers) do
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
