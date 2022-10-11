local M = {}

function M.config()
    -- https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
    local augroup = vim.api.nvim_create_augroup("yvim_core", {})
    vim.api.nvim_create_autocmd(
        { "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" },
        {
            group = augroup,
            pattern = "*",
            callback = function()
                local mode = vim.api.nvim_get_mode()
                if
                    mode.mode:find("c|r.?|!|t") == nil
                    and vim.fn.getcmdwintype() == ""
                then
                    vim.cmd([[checktime]])
                end
            end,
        }
    )
    vim.api.nvim_create_autocmd("FileChangedShellPost", {
        group = augroup,
        pattern = "*",
        callback = function()
            vim.notify(
                "Reverting buffer ["
                    .. vim.fn.expand("<afile>:t", false, false)
                    .. "]."
            )
        end,
    })
end

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
