return {
    {
        "molten-nvim",
        init = function()
            vim.g.molten_auto_open_output = false
            vim.g.molten_virt_text_output = true
        end,
        module = "molten",
    },
}
