vim.api.nvim_create_augroup("init", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "help" },
    callback = function(arg)
        vim.api.nvim_buf_set_keymap(arg.buf, "n", "q", "<Cmd>bdelete<CR>", {})
    end,
})

require("yvim.config"):load()

require("yvim.plugins").load()

require("yvim.keymaps").setup()
