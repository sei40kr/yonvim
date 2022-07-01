local wk = require("which-key")


vim.api.nvim_set_keymap("n", "<Esc>", "<Cmd>nohls<CR>", {})
-- Disable Ex mode
vim.api.nvim_set_keymap("n", "Q", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })

vim.api.nvim_set_keymap(
    "i",
    "<Tab>",
    '<Cmd>lua require("yvim.api.completion").tab_complete()<CR>',
    { noremap = true }
)
vim.api.nvim_set_keymap(
    "i",
    "<S-Tab>",
    '<Cmd>lua require("yvim.api.completion").s_tab_complete()<CR>',
    { noremap = true }
)

vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", { noremap = true })

wk.register({
    ["["] = {
        ["<Space>"] = {
            '<Cmd>lua require("yvim.api.insert").insert_newline_above()<CR>',
            "Insert newline above",
        },
        b = { "<Cmd>BufferLineCyclePrev<CR>", "Previous buffer" },
        c = "Previous comment",
        d = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
    },
    ["]"] = {
        ["<Space>"] = {
            '<Cmd>lua require("yvim.api.insert").insert_newline_below()<CR>',
            "Insert newline below",
        },
        b = { "<Cmd>BufferLineCycleNext<CR>", "Next buffer" },
        c = "Next comment",
        d = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
    },
})

require("yvim.keymaps.gs")
require("yvim.keymaps.vimacs")
