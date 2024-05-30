return {
    {
        "nvim-nu",
        init = function()
            vim.filetype.add({
                extension = {
                    nu = "nu",
                },
            })
        end,
        opts = { use_lsp_features = false },
        ft = { "nu" },
    },
}
