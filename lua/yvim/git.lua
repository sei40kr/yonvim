local M = {}

local function refresh_status(trigger)
    if trigger ~= "gitsigns" then
        require("gitsigns").refresh()
    end
    if trigger ~= "neogit" then
        require("neogit").refresh_manually()
    end
end

local function switch_git_branch()
    require("telescope.builtin").git_branches()
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
            b = { switch_git_branch, "Switch branch" },
            c = {
                name = "+create",
                i = { "<Cmd>Octo issue create<CR>", "Issue" },
                p = { "<Cmd>Octo pr create<CR>", "Pull request" },
            },
            f = {
                name = "+find",
                i = { "<Cmd>Octo issue search<CR>", "Find issue" },
                p = { "<Cmd>Octo pr search<CR>", "Find pull request" },
            },
            l = {
                name = "+list",
                i = { "<Cmd>Octo issue list<CR>", "List issues" },
                p = { "<Cmd>Octo pr list<CR>", "List pull requests" },
                g = { "<Cmd>Octo gist list<CR>", "List gists" },
            },
            o = {
                name = "+open in browser",
                o = { "<Cmd>OpenGithubFile<CR>", "Browse file" },
                r = { "<Cmd>OpenGithubProject<CR>", "Browse remote" },
            },
            r = { "<Cmd>Gitsigns reset_hunk<CR>", "Revert hunk" },
            R = { "<Cmd>Gitsigns reset_buffer<CR>", "Revert file" },
            s = { "<Cmd>Gitsigns stage_hunk<CR>", "Git stage hunk" },
            S = { "<Cmd>Gitsigns stage_buffer<CR>", "Git stage file" },
            U = { "<Cmd>Gitsigns reset_buffer_index<CR>", "Git unstage file" },
        },
    })
    keymap:set_leader("x", {
        g = {
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
