vim.api.nvim_create_augroup("init", {})
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "help" },
    callback = function(arg)
        vim.api.nvim_buf_set_keymap(arg.buf, "n", "q", "<Cmd>bdelete<CR>", {})
    end,
})

require("yvim.config").load()

require("yvim.core").setup()
require("yvim.treesitter").setup()
require("yvim.editors").setup()
require("yvim.lsp").setup()
require("yvim.snippets").setup()
require("yvim.completion").setup()
require("yvim.terminal").setup()
require("yvim.tools").setup()
require("yvim.ui").setup()

require("yvim.core").config()
require("yvim.treesitter").config()
require("yvim.editors").config()
require("yvim.lsp").config()
require("yvim.snippets").config()
require("yvim.completion").config()
require("yvim.terminal").config()
require("yvim.tools").config()
require("yvim.ui").config()

require("yvim.keymaps").setup()
