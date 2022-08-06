local M = {}

function M.load()
    local keymap = require("yvim.util.keymaps")

    keymap:set_leader("n", {
        ["<Space>"] = { "<Leader>pf", "Find file in project", noremap = false },
        ["'"] = {
            '<Cmd>lua require("telescope.builtin").resume()<CR>',
            "Resume last search",
        },
        [":"] = {
            '<Cmd>lua require("telescope.builtin").commands()<CR>',
            ":",
        },
        ["/"] = { "<Leader>sp", "Search project", noremap = false },

        -- +buffer
        b = {
            name = "+buffer",
            b = {
                function()
                    require("telescope.builtin").buffers()
                end,
                "Switch buffer",
            },
            d = {
                function()
                    require("yvim.core.buffer").delete_buffer()
                end,
                "Kill buffer",
            },
            k = {
                function()
                    require("yvim.core.buffer").delete_buffer()
                end,
                "Kill buffer",
            },
            N = {
                function()
                    require("yvim.core.buffer").new_empty_buffer()
                end,
                "New empty buffer",
            },
            O = {
                function()
                    require("yvim.core.buffer").delete_other_buffers()
                end,
                "Kill other buffers",
            },
            p = { "[b", "Previous buffer", noremap = false },
            n = { "]b", "Next buffer", noremap = false },
            s = { "<Cmd>w<CR>", "Save buffer" },
            S = { "<Cmd>wa<CR>", "Save all buffers" },
            z = {
                function()
                    vim.api.nvim_buf_delete(0, { unload = true })
                end,
                "Unload buffer",
            },
            Z = {
                function()
                    require("yvim.core.buffer").delete_unloaded_buffers()
                end,
                "Kill unloaded buffers",
            },
        },

        -- +code
        c = {
            name = "+code",
            d = { "gd", "Jump to definition", noremap = false },
            D = { "gD", "Jump to references", noremap = false },
            k = { "K", "Jump to documentation", noremap = false },
            r = "TS Rename",
        },

        -- +file
        f = {
            name = "+file",
            f = {
                function()
                    require("yvim.core.file").find_file()
                end,
                "Find file",
            },
            F = {
                function()
                    require("yvim.core.file").find_file_from_here()
                end,
                "Find file from here",
            },
            r = {
                function()
                    require("telescope.builtin").oldfiles()
                end,
                "Recent files",
            },
            s = { "<Cmd>w<CR>", "Save file" },
        },

        -- +git
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

        -- +help
        h = {
            name = "+help",
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
                    require("telescope.builtin").keymaps()
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

        -- +jump
        ["j"] = {
            function()
                require("hop").hint_char2()
            end,
            "Jump to",
        },

        -- +insert
        i = {
            name = "+insert",
            e = {
                function()
                    require("telescope.builtin").symbols({
                        sources = { "emoji" },
                    })
                end,
                "Emoji",
            },
            r = {
                function()
                    require("telescope.builtin").registers()
                end,
                "From register",
            },
            s = {
                function()
                    require("telescope").extensions.luasnip.luasnip({})
                end,
                "Snippet",
            },
        },

        -- +open
        o = {
            name = "+open",
            p = {
                function()
                    require("yvim.core.project").toggle_project_sidebar()
                end,
                "Project sidebar",
            },
            P = {
                function()
                    require("yvim.core.project").find_file_in_project_sidebar()
                end,
                "Find file in project sidebar",
            },
            t = { "<Cmd>ToggleTerm<CR>", "Toggle terminal popup" },
        },

        -- +project
        p = {
            name = "+project",
            f = {
                function()
                    require("yvim.core.project").find_file_in_project()
                end,
                "Find file in project",
            },
            p = {
                function()
                    require("telescope").extensions.project.project({
                        display_type = "full",
                    })
                end,
                "Switch project",
            },
            t = { "<Cmd>TodoTrouble<CR>", "List project todos" },
        },

        -- +quit
        q = {
            name = "+quit",
            q = { "<Cmd>qa<CR>", "Quit" },
            Q = { "<Cmd>qa!<CR>", "Quit without saving" },
        },

        -- +search
        s = {
            name = "+search",
            j = {
                function()
                    require("telescope.builtin").jumplist()
                end,
                "Jump list",
            },
            p = {
                function()
                    require("yvim.core.project").search_in_project()
                end,
                "Search project",
            },
            r = {
                function()
                    require("telescope.builtin").marks()
                end,
                "Jump to mark",
            },
        },

        -- +window
        w = {
            name = "+window",
            ["+"] = { "<C-w>+", "Increase height" },
            ["-"] = { "<C-w>-", "Decrease height" },
            ["<lt>"] = { "<C-w><lt>", "Decrease width" },
            ["="] = { "<C-w>=", "Equally high and wide" },
            [">"] = { "<C-w>>", "Increase width" },
            ["_"] = { "<C-w>_", "Set height" },
            b = { "<C-w>b", "Go to the top-right window" },
            c = { "<C-w>q", "Quit a window" },
            d = { "<C-w>q", "Quit a window" },
            h = { "<C-w>h", "Go to the left window" },
            j = { "<C-w>j", "Go to the down window" },
            k = { "<C-w>k", "Go to the up window" },
            l = { "<C-w>l", "Go to the right window" },
            q = { "<C-w>q", "Quit a window" },
            r = { "<C-w>", "Rotate upwards/rightwards" },
            R = { "<C-w>", "Rotate downwards/leftwards" },
            s = { "<C-w>s", "Split window" },
            t = { "<C-w>t", "Go to the top-left window" },
            T = { "<C-w>T", "Break out into a new tab" },
            v = { "<C-w>v", "Split window vertically" },
            W = { "<C-w>W", "Previous window" },
            w = { "<C-w>w", "Next window" },
            ["|"] = { "<C-w>|", "Set width" },
        },
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
