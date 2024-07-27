local buffer_util = require("yvim.utils.buffer")
local lsp_util = require("yvim.utils.lsp")
local window_util = require("yvim.utils.window")
local yonvim_config = require("yvim.config").get()

return {
    {
        "actions-preview.nvim",
        dependncies = { "telescope.nvim" },
        opts = {
            backend = { "telescope" },
            telescope = {},
        },
        module = "actions-preview",
    },

    {
        "neoconf.nvim",
        opts = {},
        main = "neoconf",
    },

    {
        "neodev.nvim",
        name = "neodev.nvim",
        opts = {},
        main = "neodev",
    },

    {
        "none-ls.nvim",
        init = function()
            buffer_util.add_special_filetypes({ "null-ls-info" })
            window_util.add_special_filetypes({ "null-ls-info" })
        end,
        opts = function()
            local null_ls = require("null-ls")

            return { sources = yonvim_config.null_ls.sources(null_ls) }
        end,
        main = "null-ls",
    },

    {
        "lsp-format.nvim",
        cond = yonvim_config.format.format_on_save,
        init = function()
            require("yvim.utils.lsp").on_attach(function(client)
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
        init = function()
            buffer_util.add_special_filetypes({ "lspinfo" })
            window_util.add_special_filetypes({ "lspinfo" })
        end,
        config = function()
            require("yvim.plugins.nvim-lspconfig").config()
        end,
    },
}
