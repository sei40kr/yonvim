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
            {
                "<Leader>j",
                function()
                    require("hop").hint_char2()
                end,
                desc = "Jump to"
            },
        },
    },

    {
        dir = "@iron@",
        opts = function()
            local view = require("iron.view")
            local repl_open_cmd = view.split.horizontal.botright(0.30)

            return {
                config = {
                    scratch_repl = true,
                    repl_definition = yvim.repl.handlers,
                    should_map_plug = false,
                    repl_open_cmd = function(bufnr)
                        vim.bo[bufnr].filetype = "iron"

                        return repl_open_cmd(bufnr)
                    end
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
            }
        end,
        main = "iron.core",
        keys = {
            {
                "<Leader>cs",
                function()
                    require("iron.core").visual_send()
                end,
                mode = "x",
                desc = "Send to REPL",
            },
            { "<Leader>or", "<Cmd>IronRepl<CR>",     desc = "Open REPL" },
            { "<Leader>oR", "<Cmd>IronReplHere<CR>", desc = "Open REPL (same window)" },
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
        dir = "@navigator@",
        config = true,
        main = "Navigator",
        keys = {
            { "<A-h>", "<Cmd>NavigatorLeft<CR>",  mode = { "n", "t" } },
            { "<A-j>", "<Cmd>NavigatorDown<CR>",  mode = { "n", "t" } },
            { "<A-k>", "<Cmd>NavigatorUp<CR>",    mode = { "n", "t" } },
            { "<A-l>", "<Cmd>NavigatorRight<CR>", mode = { "n", "t" } },
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
        keys = {
            { "<Leader>gg", "<Cmd>Neogit<CR>", desc = "Neogit status" }
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
            -- TODO: lazy load
            "noice.nvim",
            { dir = "@telescope_fzy_native@" },
        },
        config = function()
            require("yvim.plugin.telescope").config()
        end,
        keys = {
            {
                "<Leader><Space>",
                "<Leader>pf",
                remap = true,
                desc =
                "Find file in project"
            },
            { "<Leader>'",  "<Cmd>Telescope resume<CR>",               desc = "Resume last search" },
            {
                "<Leader>/",
                "<Leader>sp",
                remap = true,
                desc =
                "Search project"
            },
            { "<Leader>:",  "<Cmd>Telescope commands<CR>",             desc = ":" },
            { "<Leader>bb", "<Cmd>Telescope buffers<CR>",              desc = "Switch buffer" },
            { "<Leader>fF", "<Cmd>Telescope find_files cwd=%:p:h<CR>", desc = "Find file from here" },
            { "<Leader>fr", "<Cmd>Telescope oldfiles<CR>",             desc = "Recent files" },
            { "<Leader>gb", "<Cmd>Telescope git_branches<CR>",         desc = "Switch branch" },
            { "<Leader>ha", "<Cmd>Telescope autocommands<CR>",         desc = "autocmds" },
            { "<Leader>hf", "<Cmd>Telescope filetypes<CR>",            desc = "filetypes" },
            { "<Leader>hh", "<Cmd>Telescope help_tags<CR>",            desc = "help" },
            { "<Leader>hH", "<Cmd>Telescope highlights<CR>",           desc = "highlights" },
            { "<Leader>hk", "<Cmd>Telescope keymaps<CR>",              desc = "keymaps" },
            { "<Leader>hm", "<Cmd>Telescope man_pages<CR>",            desc = "manpages" },
            { "<Leader>ho", "<Cmd>Telescope vim_options<CR>",          desc = "vim options" },
            { "<Leader>ir", "<Cmd>Telescope registers<CR>",            desc = "From register" },
            {
                "<M-Space>ir",
                "<Cmd>Telescope registers<CR>",
                mode = "i",
                desc =
                "From register"
            },
            {
                "<Leader>pf",
                function()
                    local telescope_builtin = require("telescope.builtin")

                    local ok, _ = pcall(telescope_builtin.git_files, {
                        prompt_title = "Find File",
                        show_untracked = true,
                    })

                    if not ok then
                        telescope_builtin.find_files({
                            prompt_title = "Find File",
                            hidden = true,
                        })
                    end
                end,
                desc = "Find file in project",
            },
            {
                "<Leader>sp",
                "<Cmd>Telescope live_grep prompt_title=Search\\ Project<CR>",
                desc = "Search project",
            },
            { "<Leader>sj", "<Cmd>Telescope jumplist<CR>", desc = "Jump list" },
            { "<Leader>sr", "<Cmd>Telescope marks<CR>",    desc = "Jump to mark" },
        },
    },
    {
        dir = "@telescope_file_browser@",
        dependencies = { "telescope.nvim" },
        config = function()
            require("telescope").load_extension("file_browser")
        end,
        keys = {
            { "<Leader>ff", "<Cmd>Telescope file_browser path=%:p:h<CR>", desc = "Find file" },
            {
                "<Leader>fp",
                function()
                    require("telescope.builtin").find_files({ cwd = require("yvim.util.path").get_config_dir() })
                end,
                desc = "Find file in private config",
            },
            {
                "<Leader>fP",
                function()
                    require("telescope").extensions.file_browser.file_browser({
                        cwd = vim.loop.fs_realpath(require("yvim.util.path").get_config_dir()),
                    })
                end,
                desc = "Browse private config",
            },
        },
    },
    {
        dir = "@telescope_luasnip@",
        dependencies = { "telescope.nvim" },
        config = function()
            require("telescope").load_extension("luasnip")
        end,
        keys = {
            { "<Leader>is",  "<Cmd>Telescope luasnip luasnip<CR>", desc = "Snippets" },
            { "<M-Space>is", "<Cmd>Telescope luasnip luasnip<CR>", mode = "i",       desc = "Snippets" },
        },
    },
    {
        dir = "@telescope_project@",
        dependencies = { "telescope.nvim" },
        config = function()
            require("telescope").load_extension("project")
        end,
        keys = {
            {
                "<Leader>pp",
                "<Cmd>Telescope project project display_type=full<CR>",
                desc = "Switch project"
            },
        },
    },
    {
        dir = "@telescope_symbols@",
        dependencies = { "telescope.nvim" },
        keys = {
            {
                "<Leader>ie",
                function()
                    require("telescope.builtin").symbols({ sources = { "emoji" } })
                end,
                desc = "Emoji"
            },
            {
                "<M-Space>ie",
                function()
                    require("telescope.builtin").symbols({ sources = { "emoji" } })
                end,
                mode = "i",
                desc = "Emoji"
            },
        },
    },
    {
        dir = "@telescope_tabs@",
        dependencies = { "telescope.nvim" },
        keys = {
            { "<Leader><Tab>.", "<Cmd>Telescope telescope-tabs list_tabs show_preview=false<CR>", desc = "Switch tab" },
        },
    },

    {
        dir = "@todo_comments@",
        lazy = false,
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
        keys = {
            { "<Leader>pt", "<Cmd>TodoTrouble<CR>", desc = "List project todos" },
        },
    },

    {
        dir = "@toggleterm@",
        opts = {
            open_mapping = "<Nop>",
            shade_terminals = false,
            insert_mappings = false,
        },
        main = "toggleterm",
        cmd = "ToggleTerm",
        keys = {
            { "<Leader>ot", "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal popup" },
        },
    },

    {
        dir = "@tree@",
        dependencies = { "nvim-web-devicons" },
        opts = function()
            local api = require("nvim-tree.api")

            local function wrap_node(f)
                return function(node, ...)
                    node = node or api.tree.get_node_under_cursor()
                    if node then
                        return f(node, ...)
                    end
                end
            end

            local expand_or_collapse = wrap_node(function(node)
                if node.nodes then
                    require("nvim-tree.lib").expand_or_collapse(node)
                end
            end)

            local collapse_or_up = wrap_node(function(node)
                if node.open then
                    expand_or_collapse(node)
                else
                    api.node.navigate.parent(node)
                end
            end)

            local expand_or_down_or_open = wrap_node(function(node)
                if node.nodes then
                    if node.open then
                        if 0 < #node.nodes then
                            vim.cmd("norm! j")
                        end
                    else
                        expand_or_collapse(node)
                    end
                else
                    api.node.open.edit(node)
                end
            end)

            return {
                on_attach = function(bufnr)
                    local map = function(lhs, rhs, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        opts.silent = opts.silent ~= false
                        vim.keymap.set("n", lhs, rhs, opts)
                    end

                    map("<CR>", expand_or_down_or_open, { desc = "Open" })
                    map("<Tab>", expand_or_collapse, { desc = "Expand/collapse" })
                    -- TODO: z
                    -- TODO: go
                    -- TODO: gO
                    map("gr", api.tree.reload, { desc = "Refresh" })
                    map("q", api.tree.close, { desc = "Close" })
                    map("H", api.tree.toggle_hidden_filter, { desc = "Toggle hidden" })
                    map("gh", api.tree.toggle_hidden_filter, { desc = "Toggle hidden" })
                    -- TODO: gk
                    -- TODO: gj
                    map("gv", api.node.run.system, { desc = "Run system" })
                    map("c", api.fs.create, { desc = "Create" })
                    -- TODO: Copy
                    map("r", api.fs.rename, { desc = "Rename/move" })
                    map("R", api.tree.change_root_to_node, { desc = "CD" })
                    map("d", api.fs.remove, { desc = "Delete" })
                    map("ge", expand_or_down_or_open, { desc = "Expand/down/open" })

                    map("U", api.tree.change_root_to_parent, { desc = "Up" })
                    map("|", api.node.open.vertical, { desc = "Open: vertical split" })
                    map("-", api.node.open.horizontal, { desc = "Open: horizontal split" })

                    map("<BS>", "<C-w>p", { desc = "Go to previous window" })
                    map("h", collapse_or_up, { desc = "Collapse/up" })
                    map("l", expand_or_down_or_open, { desc = "Expand/down/open" })
                    map("J", api.node.navigate.sibling.next, { desc = "Next sibling" })
                    map("K", api.node.navigate.sibling.prev, { desc = "Previous sibling" })
                    map("v", api.node.open.vertical, { desc = "Open: vertical split" })
                    map("s", api.node.open.horizontal, { desc = "Open: horizontal split" })

                    map("[d", api.node.navigate.git.prev, { desc = "Previous git" })
                    map("]d", api.node.navigate.git.next, { desc = "Next git" })
                    map("<Esc>", api.live_filter.clear, { desc = "Clean filter" })
                    map("/", api.live_filter.start, { desc = "Filter" })

                    map("?", api.tree.toggle_help, { desc = "Help" })
                end,
                view = {
                    centralize_selection = true,
                    width = 35,
                    signcolumn = "no",
                },
                renderer = {
                    highlight_git = true,
                    root_folder_label = function(path)
                        return "󰺿  " .. vim.fs.basename(path)
                    end,
                    icons = {
                        symlink_arrow = " ➛  ",
                        show = { git = false },
                        glyphs = {
                            default = " ",
                            symlink = " ",
                            folder = {
                                default = " ",
                                open = " ",
                                empty = " ",
                                empty_open = " ",
                                symlink = " ",
                                symlink_open = " ",
                            },
                        },
                    }
                },
                filters = { custom = { "^\\.git$" } },
                actions = {
                    change_dir = {
                        enable = false,
                        restrict_above_cwd = true,
                    },
                    file_popup = {
                        open_win_config = { border = yvim.ui.border },
                    },
                    open_file = {
                        window_picker = {
                            -- exclude = {},
                        },
                    },
                    remove_file = { close_window = false },
                },
                live_filter = { prefix = "/" },
            }
        end,
        main = "nvim-tree",
        keys = {
            { "<Leader>op", "<Cmd>NvimTreeToggle<CR>",   desc = "Project sidebar" },
            { "<Leader>oP", "<Cmd>NvimTreeFindFile<CR>", desc = "Find file in project sidebar" },
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
                "lsp_type_definitions",
            },
            use_diagnostic_signs = true,
        },
        main = "trouble",
        cmd = "Trouble",
    },

    {
        dir = "@which_key@",
        name = "which-key.nvim",
        opts = {
            key_labels = {
                ["<space>"] = "SPC",
                ["<cr>"] = "RET",
                ["<tab>"] = "TAB",
            },
            icons = {
                breadcrumb = "",
                separator = "",
            },
        },
        config = function(_, opts)
            local wk = require("which-key")
            wk.setup(opts)

            wk.register({
                ["<Tab>"] = { name = "+tab" },
                b = { name = "+buffer" },
                c = {
                    name = "+code",
                    l = {
                        name = "+lsp",
                        F = { name = "+folders" },
                    }
                },
                f = { name = "+file" },
                g = {
                    name = "+git",
                    c = { name = "+create" },
                    f = { name = "+find" },
                    l = { name = "+list" },
                    o = { name = "+open in browser" },
                },
                h = { name = "+help" },
                i = { name = "+insert" },
                o = { name = "+open" },
                p = { name = "+project" },
                q = { name = "+quit" },
                s = { name = "+search" },
                t = { name = "+toggle" },
                w = { name = "+window" },
            }, { prefix = "<Leader>" })
            -- Somehow these doesn't work
            wk.register({
                i = { name = "+insert" },
            }, { mode = "i", prefix = "<M-Space>" })
            wk.register({
                c = { name = "+code" },
                g = {
                    name = "+git",
                    o = { name = "+open in browser" },
                },
                i = { name = "+insert" },
            }, { mode = "x", prefix = "<Leader>" })
        end,
    },
}
