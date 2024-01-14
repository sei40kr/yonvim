return {
    {
        "typescript-tools.nvim",
        dependencies = { "plenary.nvim", "nvim-lspconfig" },
        opts = {},
        config = function(spec, opts)
            require("typescript-tools").setup(opts)

            local augroup = vim.api.nvim_create_augroup("yonvim_typescript_tools", {})
            vim.api.nvim_create_autocmd("FileType", {
                group = augroup,
                pattern = spec.ft,
                callback = function(args)
                    vim.keymap.set("n", "<LocalLeader>ii", "<Cmd>TSToolsAddMissingImports<CR>", {
                        silent = true,
                        desc = "Add missing imports",
                        buffer = args.buf,
                    })
                    vim.keymap.set("n", "<LocalLeader>io", "<Cmd>TSToolsOrganizeImports<CR>", {
                        silent = true,
                        desc = "Organize imports",
                        buffer = args.buf,
                    })
                    vim.keymap.set("n", "<LocalLeader>ir", "<Cmd>TSToolsRemoveUnusedImports<CR>", {
                        silent = true,
                        desc = "Remove unused imports",
                        buffer = args.buf,
                    })
                    vim.keymap.set("n", "<LocalLeader>is", "<Cmd>TSToolsSortImports<CR>", {
                        silent = true,
                        desc = "Sort imports",
                        buffer = args.buf,
                    })

                    require("which-key").register({
                        ["<LocalLeader>i"] = { name = "+imports" },
                    }, { buffer = args.buf })
                end,
            })
        end,
        ft = {
            'javascript',
            'javascriptreact',
            'javascript.jsx',
            'typescript',
            'typescriptreact',
            'typescript.tsx',
        },
    }
}
