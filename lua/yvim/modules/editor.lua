local buffer_util = require("yvim.utils.buffer")
local window_util = require("yvim.utils.window")
local plugin_util = require("yvim.utils.plugin")
local yonvim_config = require("yvim.config").get()

return {
    {
        "aerial.nvim",
        dependencies = { "nvim-web-devicons" },
        init = function()
            buffer_util.add_special_filetypes({ "aerial" })
            window_util.add_special_filetypes({ "aerial" })
        end,
        opts = {
            {
                layout = {
                    width = 35,
                    placement = "edge",
                },
                icons = yonvim_config.icons.kinds,
                float = { border = yonvim_config.ui.border },
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
        "diffview.nvim",
        dependencies = { "nvim-web-devicons", "plenary.nvim" },
        init = function()
            buffer_util.add_special_filetypes({
                "DiffviewFiles",
                "DiffviewFileHistory",
            })
            window_util.add_special_filetypes({
                "DiffviewFiles",
                "DiffviewFileHistory",
            })
        end,
        opts = function()
            local actions = require("diffview.actions")
            return {
                enhanced_diff_hl = true,
                icons = {
                    folder_closed = " ",
                    folder_open = " ",
                },
                file_panel = {
                    listing_style = "list",
                    win_config = { width = 35 },
                },
                key_bindings = {
                    view = { q = actions.close },
                    file_panel = { q = actions.close },
                    file_history_panel = { q = actions.close },
                },
            }
        end,
        main = "diffview",
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
        keys = {
            { "<Leader>gt", "<Cmd>DiffviewFileHistory %<CR>", desc = "Git time machine" },
        },
    },

    {
        "edgy.nvim",
        event = "VeryLazy",
        opts = {
            left = {
                "neo-tree",
                {
                    ft = "aerial",
                    title = "LSP Symbols",
                },
            },
            bottom = {
                {
                    ft = "qf",
                    size = { height = 0.22 },
                },
                {
                    ft = "help",
                    size = { height = 0.42 },
                    filter = function(buf, _)
                        return vim.bo[buf].buftype == "help"
                    end,
                },
                {
                    ft = "man",
                    size = { height = 0.45 },
                },
                "iron",
                {
                    ft = "NeogitBranchSelectView",
                    size = { height = 0.22 },
                },
                "NeogitGitCommandHistory",
                "NeogitPopup",
                {
                    ft = "toggleterm",
                    -- Exclude floating windows
                    filter = function(_, win)
                        return vim.api.nvim_win_get_config(win).relative == ""
                    end,
                },
                "Trouble",
            },
            right = {
                {
                    ft = "NeogitCommitView",
                    size = { width = 0.5 },
                },
            },
            animate = { enabled = false },
            exit_when_last = true,
            wo = { winbar = false },
        },
        main = "edgy",
    },

    {
        "iron.nvim",
        init = function()
            buffer_util.add_special_filetypes({ "iron" })
            window_util.add_special_filetypes({ "iron" })
        end,
        opts = function()
            local view = require("iron.view")
            local repl_open_cmd = view.split.horizontal.botright(0.30)

            return {
                config = {
                    scratch_repl = true,
                    repl_definition = yonvim_config.repl.handlers,
                    should_map_plug = false,
                    repl_open_cmd = function(bufnr)
                        vim.bo[bufnr].filetype = "iron"

                        return repl_open_cmd(bufnr)
                    end
                },
                highlight = { italic = false },
            }
        end,
        main = "iron.core",
        keys = function()
            local function is_ts_highlighter_active(bufnr)
                if bufnr == 0 then
                    bufnr = vim.api.nvim_get_current_buf()
                end

                return require("vim.treesitter.highlighter").active[bufnr] ~= nil
            end

            local function send_to_repl()
                if not is_ts_highlighter_active(0) then
                    vim.notify(
                        "Treesitter is not active for this buffer",
                        vim.log.levels.WARN
                    )
                    return
                end

                -- Get the range of the current line (normal mode) or selection
                -- (visual mode)
                local mode = vim.api.nvim_get_mode().mode
                local range
                if mode == "n" then
                    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
                    -- Exclude the indent of the current line from the range
                    local start_col = vim.fn.indent(row + 1)
                    local end_col = vim.fn.charcol("$") - 1

                    range = { row, start_col, row, end_col }
                elseif mode == "v" or mode == "V" then
                    local _, start_lnum, start_col, _ = unpack(vim.fn.getcharpos("'<"))
                    local _, end_lnum, end_col, _ = unpack(vim.fn.getcharpos("'>"))
                    local start_row, end_row = start_lnum - 1, end_lnum - 1
                    start_col = start_col - 1
                    -- Exclude the indent of the first line from the range
                    start_col = start_col + vim.fn.indent(start_row + 1)

                    range = { start_row, start_col, end_row, end_col }
                else
                    vim.notify("Unsupported mode: " .. mode, vim.log.levels.ERROR)
                    return
                end

                -- Get the node at the first non-blank character of the current
                -- line (normal mode) or selection (visual mode)
                local node = vim.treesitter.get_node({
                    pos = { range[1], range[2] },
                })
                if node == nil then
                    vim.notify("No node found", vim.log.levels.WARN)
                    return
                end

                -- Get the smallest node that contains the current line
                -- (normal mode) or selection (visual mode)
                while not vim.treesitter.node_contains(node, range) and node:parent() ~= nil do
                    node = node:parent()
                end

                -- Extract the text of the node
                local data = vim.treesitter.get_node_text(node, 0, {})

                require("iron.core").send(vim.bo.filetype, data)
            end

            return {
                { "<Leader>cs", send_to_repl,            mode = { "n", "x" },             desc = "Send to REPL" },
                { "<Leader>or", "<Cmd>IronRepl<CR>",     desc = "Open REPL" },
                { "<Leader>oR", "<Cmd>IronReplHere<CR>", desc = "Open REPL (same window)" },
            }
        end,
    },

    {
        "mini.bufremove",
        module = "mini.bufremove",
        opts = {},
        main = "mini.bufremove",
    },

    {
        "Navigator.nvim",
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
        "neogit",
        dependencies = { "plenary.nvim", "telescope.nvim", "diffview.nvim" },
        init = function()
            buffer_util.add_special_filetypes({
                "NeogitCommitSelectView",
                "NeogitCommitView",
                "NeogitConsole",
                "NeogitGitCommandHistory",
                "NeogitLogView",
                "NeogitPopup",
                "NeogitStatus",
            })
            window_util.add_special_filetypes({
                "NeogitCommitSelectView",
                "NeogitCommitView",
                "NeogitConsole",
                "NeogitGitCommandHistory",
                "NeogitLogView",
                "NeogitPopup",
            })
        end,
        opts = {
            disable_hint = true,
            disable_context_highlighting = true,
            disable_commit_confirmation = true,
            disable_insert_on_commit = false,
            kind = "tab",
            auto_show_console = false,
            commit_select_view = { kind = "auto" },
            log_view = { kind = "auto" },
            reflog_view = { kind = "auto" },
            signs = {
                section = { "", "" },
                item = { "", "" },
            },
        },
        config = function(_, opts)
            require("neogit").setup(opts)

            local augroup =
                vim.api.nvim_create_augroup("neogit_commit_message", {})
            vim.api.nvim_create_autocmd("FileType", {
                group = augroup,
                pattern = "NeogitCommitMessage",
                callback = function()
                    -- List the commit message buffer so that we can use
                    -- Copilot to write the commit message.
                    vim.bo.buflisted = true
                end,
            })
        end,
        keys = {
            { "<Leader>gg", "<Cmd>Neogit<CR>", desc = "Neogit status" }
        },
    },

    {
        "octo.nvim",
        dependencies = {
            "nvim-web-devicons",
            "plenary.nvim",
            "telescope.nvim",
        },
        init = function()
            buffer_util.add_special_filetypes({ "octo" })
        end,
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
        "open-browser.vim",
        cmd = {
            "OpenBrowser",
            "OpenBrowserSearch",
            "OpenBrowserSmartSearch",
        },
    },

    {
        "open-browser-github.vim",
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
        "overseer.nvim",
        init = function()
            buffer_util.add_special_filetypes({
                "OverseerForm",
                "OverseerList",
            })
            window_util.add_special_filetypes({
                "OverseerForm",
                "OverseerList",
            })
        end,
        opts = {
            strategy = plugin_util.has("toggleterm.nvim") and "toggleterm"
                or "terminal",
            form = {
                border = yonvim_config.border,
                win_opts = { winblend = 0 },
            },
            confirm = {
                border = yonvim_config.border,
                win_opts = { winblend = 0 },
            },
            task_win = {
                border = yonvim_config.border,
                win_opts = { winblend = 0 },
            },
            log = {
                {
                    type = "notify",
                    level = vim.log.levels.WARN,
                },
            },
        },
        keys = {
            {
                "<Leader>pz",
                "<Cmd>OverseerRun<CR>",
                desc = "List project tasks",
            },
        },
    },

    {
        "project.nvim",
        opts = {
            manual_mode = true,
            detection_methods = { "pattern" },
            patterns = { ".git" },
        },
        main = "project_nvim",
    },

    {
        "scope.nvim",
        opts = {},
        main = "scope",
    },

    {
        "telescope.nvim",
        dependencies = {
            "plenary.nvim",
            -- TODO: lazy load
            "noice.nvim",
            "telescope-fzy-native.nvim",
        },
        init = function()
            buffer_util.add_special_filetypes({
                "TelescopePrompt",
                "TelescopePreview",
            })
            window_util.add_special_filetypes({
                "TelescopePrompt",
                "TelescopePreview",
            })
        end,
        config = function()
            require("yvim.plugins.telescope-nvim").config()
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
        "telescope-cmdline.nvim",
        dependencies = { "telescope.nvim" },
        config = function()
            require("telescope").load_extension("cmdline")
        end,
        keys = {
            { "<Leader>:", "<Cmd>Telescope cmdline<CR>", desc = ":" },
        },
    },
    {
        "telescope-file-browser.nvim",
        dependencies = { "telescope.nvim" },
        config = function()
            require("telescope").load_extension("file_browser")
        end,
        keys = {
            { "<Leader>ff", "<Cmd>Telescope file_browser path=%:p:h<CR>", desc = "Find file" },
            {
                "<Leader>fp",
                function()
                    require("telescope.builtin").find_files({
                        cwd = vim.fn.stdpath("config"),
                    })
                end,
                desc = "Find file in private config",
            },
            {
                "<Leader>fP",
                function()
                    require("telescope").extensions.file_browser.file_browser({
                        cwd = vim.fn.stdpath("config"),
                    })
                end,
                desc = "Browse private config",
            },
        },
    },
    {
        "telescope-luasnip.nvim",
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
        "telescope-project.nvim",
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
        "telescope-symbols.nvim",
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
        "telescope-tabs",
        dependencies = { "telescope.nvim" },
        keys = {
            { "<Leader><Tab>.", "<Cmd>Telescope telescope-tabs list_tabs show_preview=false<CR>", desc = "Switch tab" },
        },
    },

    {
        "todo-comments.nvim",
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
        "toggleterm.nvim",
        init = function()
            buffer_util.add_special_filetypes({ "toggleterm" })
            window_util.add_special_filetypes({ "toggleterm" })
        end,
        opts = {
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.35
                end
            end,
            open_mapping = nil,
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
        "neo-tree.nvim",
        init = function()
            buffer_util.add_special_filetypes({
                "neo-tree",
                "neo-tree-popup",
                "neo-tree-preview",
            })
            window_util.add_special_filetypes({
                "neo-tree",
                "neo-tree-popup",
                "neo-tree-preview",
            })
        end,
        dependencies = {
            "nui.nvim",
            "nvim-web-devicons",
            "plenary.nvim",
            {
                "nvim-window-picker",
                event = "VeryLazy",
                opts = {
                    filter_rules = {
                        bo = {
                            filetype = window_util.get_special_filetypes(),
                            buftype = window_util.special_buftypes,
                        },
                    },
                },
                main = "window-picker",
            },
        },
        opts = function()
            return require("yvim.plugins.neo-tree-nvim").opts()
        end,
        main = "neo-tree",
        keys = {
            { "<Leader>op", "<Cmd>Neotree source=filesystem<CR>",             desc = "Project sidebar" },
            { "<Leader>oP", "<Cmd>Neotree source=filesystem reveal=true<CR>", desc = "Find file in project sidebar" },
        },
    },

    {
        "trouble.nvim",
        dependencies = { "nvim-web-devicons" },
        init = function()
            buffer_util.add_special_filetypes({ "Trouble" })
            window_util.add_special_filetypes({ "Trouble" })
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
        module = "trouble",
    },

    {
        "which-key.nvim",
        opts = {
            key_labels = {
                ["<space>"] = "SPC",
                ["<cr>"] = "RET",
                ["<tab>"] = "TAB",
            },
            icons = {
                breadcrumb = " ",
                separator = " ",
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
