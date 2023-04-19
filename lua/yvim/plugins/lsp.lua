return {
    {
        dir = "@lsp_inlayhints@",
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
        dir = "@mason@",
        name = "mason.nvim",
        init = function()
            require("yvim.plugin.mason").init()
        end,
        opts = function()
            local path = require("yvim.util.path")
            return {
                border = "rounded",
                ui = {
                    border = yvim.ui.border,
                    icons = {
                        server_installed = "●",
                        server_pending = "●",
                        server_uninstalled = "●",
                    },
                },
                install_root_dir = path.join_paths(path.get_runtime_dir(), "mason"),
            }
        end,
        main = "mason",
    },

    {
        dir = "@mason_lspconfig@",
        name = "mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = true,
    },

    {
        dir = "@neoconf@",
        name = "neoconf.nvim",
        opts = {},
        main = "neoconf",
    },

    {
        dir = "@neodev@",
        name = "neodev.nvim",
        opts = {},
        main = "neodev",
    },

    {
        dir = "@null_ls@",
        opts = function()
            local null_ls = require("null-ls")

            return {
                sources = yvim.null_ls.sources(null_ls),
                on_attach = function(client, bufnr)
                    require("yvim.lsp").on_attach(client, bufnr)
                end,
            }
        end,
        main = "null-ls",
    },

    {
        dir = "@lsp_format@",
        opts = {},
        module = "lsp-format",
    },

    {
        dir = "@lspconfig@",
        dependencies = {
            "cmp-nvim-lsp",
            "mason-lspconfig.nvim",
            "neoconf.nvim",
            "neodev.nvim",
        },
        init = function()
            require("yvim.plugin.lspconfig").init()
        end,
        config = function()
            require("yvim.plugin.lspconfig").config()
        end,
    },
}