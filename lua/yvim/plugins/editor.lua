return {
    {
        dir = "@aerial@",
        dependencies = { "nvim-web-devicons" },
        init = function()
            require("yvim.plugin.aerial").init()
        end,
        opts = {
            {
                layout = {
                    max_width = 35,
                    width = 0.2,
                    placement = "edge",
                },

                float = { border = yvim.ui.border },
            },
        },
        main = "aerial",
        keys = {
            {
                "<Leader>cS",
                "<Cmd>AerialOpen<CR>",
                mode = "n",
                desc = "Symbols"
            }
        },
    },

    {
        dir = "@diffview@",
        dependencies = { "nvim-web-devicons", "plenary.nvim" },
        init = function()
            require("yvim.plugin.diffview").init()
        end,
        opts = function()
            local actions = require("diffview.actions")
            return {
                icons = {
                    folder_closed = " ",
                    folder_open = " ",
                },
                file_panel = { listing_style = "list" },
                key_bindings = {
                    view = { q = actions.close },
                    file_panel = { q = actions.close },
                    file_history_panel = { q = actions.close },
                },
            }
        end,
        main = "diffview",
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    },

    {
        dir = "@hop@",
        opts = {},
        main = "hop",
        keys = {
            { "<Leader>j", function()
                require("hop").hint_char2()
            end, desc = "Jump to" },
        },
    },

    {
        dir = "@iron@",
        opts = {
            config = {
                scratch_repl = true,
                repl_definition = yvim.repl.handlers,
                should_map_plug = false,
                repl_open_cmd = yvim.repl.win_open_cmd,
            },
            keymaps = {
                send_motion = "<Nop>",
                visual_send = "<Nop>",
                send_file = "<Nop>",
                send_line = "<Nop>",
                send_mark = "<Nop>",
                mark_motion = "<Nop>",
                mark_visual = "<Nop>",
                remove_mark = "<Nop>",
                cr = "<Nop>",
                interrupt = "<Nop>",
                exit = "<Nop>",
                clear = "<Nop>",
            },
            highlight = { italic = false },
        },
        main = "iron.core",
        keys = {
            { "<Leader>cs", function()
                require("iron.core").visual_send()
            end, mode = { "n", "x" }, desc = "Send to REPL" },
            { "<Leader>or", function()
                require("iron.core").repl_for(vim.bo.filetype)
            end, mode = "n", desc = "Open REPL" },
            { "<Leader>oR", function()
                require("iron.core").repl_here(vim.bo.filetype)
            end, mode = "n", desc = "Open REPL" },
        },
    },

    {
        dir = "@mini_bufremove@",
        module = "mini.bufremove",
        opts = {},
        main = "mini.bufremove",
    },

    {
        dir = "@mini_jump@",
        opts = {},
        main = "mini.jump",
    },

    {
        dir = "@mini_trailspace@",
        lazy = false,
        opts = {},
        main = "mini.trailspace",
        keys = {
            {
                "<Leader>cw",
                function()
                    ---@diagnostic disable-next-line: undefined-global
                    MiniTrailspace.trim()
                end,
                desc = "Delete trailing whitespace",
            },
            {
                "<Leader>cW",
                function()
                    ---@diagnostic disable-next-line: undefined-global
                    MiniTrailspace.trim_last_lines()
                end,
                desc = "Delete trailing newlines",
            },
        },
    },

    {
        dir = "@neogit@",
        dependencies = { "plenary.nvim" },
        opts = {
            disable_hint = true,
            disable_context_highlighting = true,
            disable_commit_confirmation = true,
            disable_insert_on_commit = false,
            disable_builtin_notifications = true,
            commit_popup = { kind = "tab" },
            signs = {
                section = { "", "" },
                item = { "", "" },
            },
            integrations = { diffview = true },
        },
        main = "neogit",
        module = "neogit",
    },

    {
        dir = "@neo_tree@",
        dependencies = { "plenary.nvim", "nvim-web-devicons", "nui.nvim" },
        init = function()
            vim.g.neo_tree_remove_legacy_commands = 1
        end,
        opts = {
            close_if_last_window = true,
            popup_border_style = yvim.ui.border,
            default_component_configs = {
                container = { enable_character_fade = false },
                indent = { with_markers = false },
            },
            window = { width = 35 },
            filesystem = { use_libuv_file_watcher = false },
        },
        main = "neo-tree",
        keys = {
            {
                "<Leader>op",
                "<Cmd>Neotree toggle<CR>",
                mode = "n",
                desc = "Project sidebar",
            },
            {
                "<Leader>oP",
                "<Cmd>Neotree reveal<CR>",
                mode = "n",
                desc = "Find file in project sidebar",
            },
        },
    },

    {
        dir = "@octo@",
        dependencies = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        opts = {
            right_bubble_delimiter = "",
            left_bubble_delimiter = "",
        },
        main = "octo",
        cmd = "Octo",
        keys = {
            { "<Leader>gci", "<Cmd>Octo issue create<CR>", desc = "Issue" },
            { "<Leader>gcp", "<Cmd>Octo pr create<CR>",    desc = "Pull request" },
            { "<Leader>gfi", "<Cmd>Octo issue search<CR>", desc = "Find issue" },
            { "<Leader>gfp", "<Cmd>Octo pr search<CR>",    desc = "Find pull request" },
            { "<Leader>gli", "<Cmd>Octo issue list<CR>",   desc = "List issues" },
            { "<Leader>glp", "<Cmd>Octo pr list<CR>",      desc = "List pull requests" },
            { "<Leader>glg", "<Cmd>Octo gist list<CR>",    desc = "List gits" },
        },
    },

    {
        dir = "@open_browser@",
        name = "open-browser.vim",
        cmd = {
            "OpenBrowser",
            "OpenBrowserSearch",
            "OpenBrowserSmartSearch",
        },
    },

    {
        dir = "@open_browser_github@",
        dependencies = { "open-browser.vim" },
        cmd = {
            "OpenGithubFile",
            "OpenGithubIssue",
            "OpenGithubPullReq",
            "OpenGithubProject",
        },
        keys = {
            { "<Leader>goo", ":OpenGithubFile<CR>",        mode = { "n", "x" },   desc = "Browse file" },
            { "<Leader>gor", "<Cmd>OpenGithubProject<CR>", desc = "Browse remote" },
        },
    },

    {
        dir = "@project@",
        opts = {
            manual_mode = true,
            detection_methods = { "pattern" },
            patterns = { ".git" },
        },
        main = "project_nvim",
    },

    {
        dir = "@scope@",
        config = true,
    },

    {
        dir = "@stickybuf@",
        config = function()
            require("yvim.plugin.stickybuf").config()
        end,
    },

    {
        dir = "@telescope@",
        name = "telescope.nvim",
        dependencies = {
            "plenary.nvim",
            "noice.nvim",
            { dir = "@telescope_file_browser@" },
            { dir = "@telescope_fzy_native@" },
            { dir = "@telescope_luasnip@" },
            { dir = "@telescope_project@" },
            { dir = "@telescope_symbols@" },
        },
        config = function()
            require("yvim.plugin.telescope").config()
        end,
        keys = {
            { "<Leader>'", function()
                require("telescope.builtin").resume()
            end, desc = "Resume last search" },
            { "<Leader>:", function()
                require("telescope.builtin").commands()
            end, desc = ":" },
            { "<Leader>bb", function()
                require("telescope.builtin").buffers()
            end, desc = "Switch buffer" },
            { "<Leader>fr", function()
                require("telescope.builtin").oldfiles()
            end, desc = "Recent files" },
            { "<Leader>gb", function()
                require("telescope.builtin").git_branches()
            end, desc = "Switch branch" },
            { "<Leader>ha", function()
                require("telescope.builtin").autocommands()
            end, desc = "autocmds" },
            { "<Leader>hf", function()
                require("telescope.builtin").filetypes()
            end, desc = "filetypes" },
            { "<Leader>hh", function()
                require("telescope.builtin").help_tags()
            end, desc = "help" },
            { "<Leader>hH", function()
                require("telescope.builtin").highlights()
            end, desc = "highlights" },
            { "<Leader>hk", function()
                require("telescope.builtin").keymaps()
            end, desc = "keymaps" },
            { "<Leader>hm", function()
                require("telescope.builtin").man_pages()
            end, desc = "manpages" },
            { "<Leader>ho", function()
                require("telescope.builtin").vim_options()
            end, desc = "vim options" },
            { "<Leader>ie", function()
                require("telescope.builtin").symbols({ sources = { "emoji" } })
            end, desc = "Emoji" },
            { "<M-Space>ie", function()
                require("telescope.builtin").symbols({ sources = { "emoji" } })
            end, mode = "i", desc = "Emoji" },
            { "<Leader>ir", function()
                require("telescope.builtin").registers()
            end, desc = "From register" },
            { "<M-Space>ir", function()
                require("telescope.builtin").registers()
            end, mode = "i", desc = "From register" },
            { "<Leader>sj", function()
                require("telescope.builtin").jumplist()
            end, desc = "Jump list" },
            { "<Leader>sr", function()
                require("telescope.builtin").marks()
            end, desc = "Jump to mark" },
        },
        cmd = "Telescope",
        module = { "telescope", "telescope.builtin" },
    },

    {
        dir = "@todo_comments@",
        dependencies = { "trouble.nvim" },
        opts = {
            signs = false,
            keywords = {
                PERF = { icon = "  ", alt = { "OPTIMIZE" } },
                NOTE = { icon = "  ", color = "hint" },
                REVIEW = { icon = "  ", color = "info" },
                TODO = { icon = "  ", color = "info" },
                HACK = { icon = "  ", color = "warning" },
                XXX = { icon = "  ", color = "warning" },
                FIXME = { icon = "  ", color = "error" },
            },
            highlight = { keyword = "bg" },
        },
        main = "todo-comments",
    },

    {
        dir = "@toggleterm@",
        config = function()
            require("yvim.plugin.toggleterm").config()
        end,
        cmd = "ToggleTerm",
        keys = {
            { "<Leader>ot", "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal popup" },
        },
    },

    {
        dir = "@trouble@",
        name = "trouble.nvim",
        dependencies = { "nvim-web-devicons" },
        init = function()
            require("yvim.plugin.trouble").init()
        end,
        opts = {
            indent_lines = false,
            auto_jump = {
                "lsp_definitions",
                "lsp_implementations",
                "lsp_references",
            },
            use_diagnostic_signs = true,
        },
        main = "trouble",
        cmd = "Trouble",
    },

    {
        dir = "@which_key@",
        name = "which-key.nvim",
        config = function()
            require("yvim.plugin.which-key").config()
        end,
    },
}
