local M = {}

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    -- Disable Ex mode
    vim.keymap.set("n", "Q", "<Nop>", { noremap = true })

    vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

    -- Clear previous search highlight
    vim.keymap.set("n", "<Esc>", "<Cmd>nohls<CR>", {})

    keymap:set_leader("n", {
        ["'"] = {
            '<Cmd>lua require("telescope.builtin").resume()<CR>',
            "Resume last search",
        },
        [":"] = {
            '<Cmd>lua require("telescope.builtin").commands()<CR>',
            ":",
        },
        -- +help
        h = {
            a = {
                function()
                    require("telescope.builtin").autocommands()
                end,
                "autocmds",
            },
            f = {
                function()
                    require("telescope.builtin").filetypes()
                end,
                "filetypes",
            },
            h = {
                function()
                    require("telescope.builtin").help_tags()
                end,
                "help",
            },
            H = {
                function()
                    require("telescope.builtin").highlights()
                end,
                "highlights",
            },
            k = {
                function()
                    require("telescope.builtin").keymap()
                end,
                "keymaps",
            },
            m = {
                function()
                    require("telescope.builtin").man_pages()
                end,
                "manpages",
            },
            o = {
                function()
                    require("telescope.builtin").vim_options()
                end,
                "vim options",
            },
        },
        -- +quit
        q = {
            q = { "<Cmd>qa<CR>", "Quit" },
            Q = { "<Cmd>qa!<CR>", "Quit without saving" },
        },
    })

    keymap:set_for_ft("help", "n", { q = { "<C-w>c", "Quit" } })
end

return M
