local config_opts = require("yvim.config").opts

return {
    {
        "lsp-inlayhints.nvim",
        init = function()
            vim.api.nvim_create_augroup("yvim_inlayhints", {})
            vim.api.nvim_create_autocmd("LspAttach", {
                group = "yvim_inlayhints",
                callback = function(args)
                    if not (args.data and args.data.client_id) then
                        return
                    end

                    local bufnr = args.buf
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    require("lsp-inlayhints").on_attach(client, bufnr)
                end,
            })
        end,
        opts = {},
        main = "lsp-inlayhints",
        keys = {
            {
                "<Leader>th",
                function()
                    require("lsp-inlayhints").toggle()
                end,
                desc = "LSP Inlay Hints",
            },
        },
        module = "lsp-inlayhints",
    },

    {
        "neoconf.nvim",
        cond = not vim.g.started_by_firenvim,
        opts = {},
        main = "neoconf",
    },

    {
        "neodev.nvim",
        name = "neodev.nvim",
        cond = not vim.g.started_by_firenvim,
        opts = {},
        main = "neodev",
    },

    {
        "none-ls.nvim",
        opts = function()
            local null_ls = require("null-ls")

            return { sources = config_opts.null_ls.sources(null_ls) }
        end,
        main = "null-ls",
    },

    {
        "lsp-format.nvim",
        cond = config_opts.format.format_on_save,
        init = function()
            local Util = require("yvim.util")

            Util.on_attach(function(client)
                require("lsp-format").on_attach(client)
            end)
        end,
        opts = {},
        main = "lsp-format",
    },

    {
        "nvim-lspconfig",
        dependencies = {
            "cmp-nvim-lsp",
            "neoconf.nvim",
            "neodev.nvim",
        },
        config = function()
            require("yvim.plugin.lspconfig").config()
        end,
    },
}
