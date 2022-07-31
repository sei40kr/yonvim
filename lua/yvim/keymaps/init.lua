local M = {}

function M.setup()
    -- +code
    require("yvim.keymaps.code").setup()
    -- +buffer
    require("yvim.keymaps.buffer").setup()
    -- +code
    require("yvim.keymaps.code").setup()
    -- +file
    require("yvim.keymaps.file").setup()
    -- +git
    require("yvim.keymaps.git").setup()
    -- +help
    require("yvim.keymaps.help").setup()
    -- +insert
    require("yvim.keymaps.insert").setup()
    -- +open
    require("yvim.keymaps.open").setup()
    -- +project
    require("yvim.keymaps.project").setup()
    -- +quit
    require("yvim.keymaps.quit").setup()
    -- +search
    require("yvim.keymaps.search").setup()
    -- +toggle
    require("yvim.keymaps.toggle").setup()
    -- +window
    require("yvim.keymaps.window").setup()

    local keymap = require("yvim.utils.keymap")

    keymap.set_leader("n", {
        ["'"] = {
            '<Cmd>lua require("telescope.builtin").resume()<CR>',
            "Resume last search",
        },
        [":"] = {
            '<Cmd>lua require("telescope.builtin").commands()<CR>',
            ":",
        },
        ["/"] = { "<Leader>sp", "Search project", noremap = false },
        ["j"] = {
            function()
                require("hop").hint_char2()
            end,
            "Jump to",
        },
    })

    vim.keymap.set("n", "<Esc>", "<Cmd>nohls<CR>", {})

    -- Disable Ex mode
    vim.keymap.set("n", "Q", "<Nop>", { noremap = true })

    vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
    vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })
end

return M
