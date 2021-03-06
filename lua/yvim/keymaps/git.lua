local M = {}

function M.setup()
    local keymap = require("yvim.utils.keymap")

    keymap.set_leader("n", {
        g = {
            name = "+git",
            ["["] = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
            ["]"] = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
            b = {
                function()
                    require("telescope.builtin").git_branches()
                end,
                "Switch branch",
            },
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
            g = { "<Cmd>Neogit<CR>", "Neogit status" },
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
    keymap.set_leader("x", {
        g = {
            name = "+git",
            o = {
                name = "+open in browser",
                o = { ":OpenGithubFile<CR>", "Browse file" },
            },
            r = { ":Gitsigns reset_hunk<CR>", "Revert hunk" },
            s = { ":Gitsigns stage_hunk<CR>", "Git stage hunk" },
        },
    })

    keymap.set("n", {
        ["[d"] = { "<Cmd>Gitsigns prev_hunk<CR>", "Jump to previous hunk" },
        ["]d"] = { "<Cmd>Gitsigns next_hunk<CR>", "Jump to next hunk" },
    })
end

return M
