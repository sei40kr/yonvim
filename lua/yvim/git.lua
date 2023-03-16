local M = {}

local function refresh_status(trigger)
    if trigger ~= "gitsigns" then
        require("gitsigns").refresh()
    end
    if trigger ~= "neogit" then
        require("neogit").refresh_manually()
    end
end

function M.load_autocmds()
    local group = vim.api.nvim_create_augroup("yvim_git", {})
    vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = "GitSignsUpdate",
        callback = function() refresh_status("gitsigns") end
    })
    vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = { "NeogitStatusRefreshed", "NeogitCommitComplete" },
        callback = function() refresh_status("neogit") end
    })
end

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set("n", {
        ["[d"] = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
        ["]d"] = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
    })
    keymap:set_leader("n", {
        g = {
            ["["] = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
            ["]"] = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
            c = { name = "+create" },
            f = { name = "+find" },
            l = { name = "+list" },
            o = { name = "+open in browser" },
            r = { "<Cmd>Gitsigns reset_hunk<CR>", "Revert hunk" },
            R = { "<Cmd>Gitsigns reset_buffer<CR>", "Revert file" },
            s = { "<Cmd>Gitsigns stage_hunk<CR>", "Git stage hunk" },
            S = { "<Cmd>Gitsigns stage_buffer<CR>", "Git stage file" },
            U = { "<Cmd>Gitsigns reset_buffer_index<CR>", "Git unstage file" },
        },
    })
    keymap:set_leader("x", {
        g = {
            o = { name = "+open in browser" },
            r = { ":Gitsigns reset_hunk<CR>", "Revert hunk" },
            s = { ":Gitsigns stage_hunk<CR>", "Git stage hunk" },
        },
    })
end

return M
