local M = {}

function M.load()
    local keymap = require("yvim.util.keymaps")

    -- Disable Ex mode
    vim.keymap.set("n", "Q", "<Nop>", { noremap = true })

    -- Escape key sequence
    vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
    vim.keymap.set("t", "jk", "<C-\\><C-n>", { noremap = true })

    -- Clear last search highlighting on escape
    vim.keymap.set("n", "<Esc>", "<Cmd>nohls<CR>", {})

    keymap:set("n", {
        ["[<Space>"] = {
            function()
                require("yvim.core.insert").insert_newline_above()
            end,
            "Insert newline above",
        },
        ["]<Space>"] = {
            function()
                require("yvim.core.insert").insert_newline_below()
            end,
            "Insert newline below",
        },
        ["[c"] = "Previous comment",
        ["]c"] = "Next comment",
        ["[b"] = { "<Cmd>bp<CR>", "Previous buffer" },
        ["]b"] = { "<Cmd>bn<CR>", "Next buffer" },
        ["[d"] = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
        ["]d"] = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
    })

    keymap:set_leader("x", {
        g = {
            d = "Jump to definition",
            D = "Jump to references",
            o = {
                name = "+open in browser",
                o = { ":OpenGithubFile<CR>", "Browse file" },
            },
            r = { ":Gitsigns reset_hunk<CR>", "Revert hunk" },
            s = { ":Gitsigns stage_hunk<CR>", "Git stage hunk" },
        },
    })
end

return M
