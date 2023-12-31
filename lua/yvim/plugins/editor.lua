local Util = require("yvim.util")
local config_opts = require("yvim.config").opts

return {
    {
        dir = "@aerial@",
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons" },
        opts = {
            {
                layout = {
                    width = 35,
                    placement = "edge",
                },
                icons = config_opts.icons.kinds,
                float = { border = config_opts.ui.border },
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
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons", "plenary.nvim" },
        opts = function()
            local actions = require("diffview.actions")
            return {
                enhanced_diff_hl = true,
                icons = {
                    folder_closed = " ",
                    folder_open = " ",
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
        dir = "@edgy@",
        cond = not vim.g.started_by_firenvim,
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
        dir = "@firenvim@",
        lazy = not vim.g.started_by_firenvim,
        config = function()
            vim.api.nvim_create_user_command(
                "FirenvimInstall",
                [[call firenvim#install(0)]],
                { desc = "Install Firenvim" }
            )

            if vim.g.started_by_firenvim then
                local delta = 0

                local function set_guifont()
                    vim.o.guifont = config_opts.ui.font.name .. ":h" .. (config_opts.ui.font.size + delta)
                end

                vim.keymap.set("n", "<C-=>", function()
                    delta = delta + 1
                    set_guifont()
                end)
                vim.keymap.set("n", "<C-->", function()
                    delta = delta - 1
                    set_guifont()
                end)
                vim.keymap.set("n", "<C-0>", function()
                    delta = 0
                    set_guifont()
                end)

                set_guifont()
            end
        end,
        cmd = "FirenvimInstall",
    },

    {
        dir = "@iron@",
        cond = not vim.g.started_by_firenvim,
        opts = function()
            local view = require("iron.view")
            local repl_open_cmd = view.split.horizontal.botright(0.30)

            return {
                config = {
                    scratch_repl = true,
                    repl_definition = config_opts.repl.handlers,
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
        dir = "@mini_bufremove@",
        cond = not vim.g.started_by_firenvim,
        module = "mini.bufremove",
        opts = {},
        main = "mini.bufremove",
    },

    {
        dir = "@navigator@",
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
        dependencies = { "plenary.nvim" },
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
        dir = "@octo@",
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
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
        dir = "@overseer@",
        cond = not vim.g.started_by_firenvim,
        name = "overseer",
        opts = {
            strategy = Util.has("toggleterm.nvim") and "toggleterm"
                or "terminal",
            form = {
                border = config_opts.border,
                win_opts = { winblend = 0 },
            },
            confirm = {
                border = config_opts.border,
                win_opts = { winblend = 0 },
            },
            task_win = {
                border = config_opts.border,
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
        dir = "@project@",
        cond = not vim.g.started_by_firenvim,
        opts = {
            manual_mode = true,
            detection_methods = { "pattern" },
            patterns = { ".git" },
        },
        main = "project_nvim",
    },

    {
        dir = "@scope@",
        cond = not vim.g.started_by_firenvim,
        opts = {},
        main = "scope",
    },

    {
        dir = "@telescope@",
        name = "telescope.nvim",
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
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
        dir = "@telescope_luasnip@",
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
        dependencies = { "telescope.nvim" },
        keys = {
            { "<Leader><Tab>.", "<Cmd>Telescope telescope-tabs list_tabs show_preview=false<CR>", desc = "Switch tab" },
        },
    },

    {
        dir = "@todo_comments@",
        lazy = false,
        cond = not vim.g.started_by_firenvim,
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
        name = "toggleterm.nvim",
        cond = not vim.g.started_by_firenvim,
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
        dir = "@neo_tree@",
        cond = not vim.g.started_by_firenvim,
        dependencies = {
            "nui.nvim",
            "nvim-web-devicons",
            "plenary.nvim",
            {
                dir = "@window_picker@",
                event = "VeryLazy",
                opts = {
                    filter_rules = {
                        bo = {
                            filetype = {
                                "aerial",
                                "help",
                                "iron",
                                "NeogitBranchSelectView",
                                "NeogitCommitView",
                                "NeogitGitCommandHistory",
                                "NeogitPopup",
                                "man",
                                "neo-tree",
                                "qf",
                                "toggleterm",
                                "Trouble",
                            },
                            buftype = {
                                "quickfix",
                                "terminal",
                            },
                        }
                    },
                },
                main = "window-picker",
            },
        },
        opts = function()
            local common_actions = require("neo-tree.sources.common.commands")
            local fs = require("neo-tree.sources.filesystem")
            local renderer = require("neo-tree.ui.renderer")
            local utils = require("neo-tree.utils")

            return {
                close_if_last_window = false,
                popup_border_style = config_opts.ui.border,
                enable_diagnostics = false,
                default_component_configs = {
                    container = { enable_character_fade = false },
                    indent = { with_markers = false },
                    icon = {
                        folder_closed = " ",
                        folder_open = " ",
                        folder_empty = " ",
                    },
                    modified = { symbol = "" },
                    git_status = {
                        symbols = {
                            -- Change type
                            added     = "",
                            modified  = "",
                            deleted   = "",
                            renamed   = "",
                            -- Status type
                            untracked = "",
                            ignored   = "",
                            unstaged  = "",
                            staged    = "",
                            conflict  = "",
                        }
                    },
                    file_size = { enabled = false },
                    type = { enabled = false },
                    last_modified = { enabled = false },
                    created = { enabled = false },
                },
                commands = {
                    goto_previous_window = function(_)
                        vim.cmd [[wincmd p]]
                    end,
                    select_up_node = function(state)
                        local node = state.tree:get_node()

                        local parent_id = node:get_parent_id()
                        if parent_id == nil then
                            return
                        end

                        renderer.focus_node(state, parent_id)
                    end,
                    select_down_node = function(state)
                        local node = state.tree:get_node()

                        if node:is_expanded() then
                            local child_ids = node:get_child_ids()

                            for _, id in ipairs(child_ids) do
                                local child = state.tree:get_node(id)
                                if child:is_expanded() then
                                    renderer.focus_node(state, id)
                                    return
                                end
                            end

                            if 0 < #child_ids then
                                renderer.focus_node(state, child_ids[1])
                            end

                            return
                        end

                        local parent_id = node:get_parent_id()
                        if parent_id == nil then
                            return
                        end

                        local sibling_ids = state.tree:get_node(parent_id):get_child_ids()
                        local index
                        for i, id in ipairs(sibling_ids) do
                            if id == node.id then
                                index = i
                                break
                            end
                        end
                        for i, id in ipairs(sibling_ids) do
                            if i > index then
                                local sibling = state.tree:get_node(id)
                                if sibling:is_expanded() then
                                    renderer.focus_node(state, id)
                                    return
                                end
                            end
                        end
                    end,
                    select_previous_sibling_node = function(state)
                        local node = state.tree:get_node()

                        local parent_id = node:get_parent_id()
                        if parent_id == nil then
                            return
                        end

                        local parent = state.tree:get_node(parent_id)
                        local child_ids = parent:get_child_ids()
                        local index
                        for i, id in ipairs(child_ids) do
                            if id == node.id then
                                index = i
                                break
                            end
                        end

                        if 1 < index then
                            renderer.focus_node(state, child_ids[index - 1])
                        end
                    end,
                    select_next_sibling_node = function(state)
                        local node = state.tree:get_node()

                        local parent_id = node:get_parent_id()
                        if parent_id == nil then
                            return
                        end

                        local parent = state.tree:get_node(parent_id)
                        local child_ids = parent:get_child_ids()
                        local index
                        for i, id in ipairs(child_ids) do
                            if id == node.id then
                                index = i
                                break
                            end
                        end

                        if index < #child_ids then
                            renderer.focus_node(state, child_ids[index + 1])
                        end
                    end,
                    close_or_up = function(state)
                        local node = state.tree:get_node()

                        if node:is_expanded() then
                            common_actions.close_node(state)
                            return
                        end

                        local parent_id = node:get_parent_id()
                        if parent_id == nil then
                            return
                        end

                        renderer.focus_node(state, parent_id)
                    end,
                    expand_or_down_or_open_with_window_picker = function(state)
                        local node = state.tree:get_node()

                        if node:is_expanded() then
                            if node:has_children() then
                                renderer.focus_node(state, node:get_child_ids()[1])
                            end

                            return
                        end

                        if utils.is_expandable(node) then
                            common_actions.toggle_node(state, utils.wrap(fs.toggle_directory, state))
                            return
                        end

                        common_actions.open_with_window_picker(state, nil)
                    end,
                },
                window = {
                    width = 35,
                    mappings = {
                        ["<CR>"] = "open_with_window_picker",
                        ["<Tab>"] = "toggle_node",
                        O = "expand_all_nodes",

                        z = "toggle_node",
                        gO = {
                            "toggle_preview",
                            config = {
                                use_float = true,
                                use_image_nvim = true,
                            }
                        },
                        ["<C-k>"] = "select_up_node",
                        gk = "select_up_node",
                        ["[["] = "select_up_node",
                        ["<C-j>"] = "select_down_node",
                        gj = "select_down_node",
                        ["]]"] = "select_down_node",
                        r = "rename",
                        d = "delete",
                        ge = "open_with_window_picker",
                        ["|"] = "vsplit_with_window_picker",
                        ["-"] = "split_with_window_picker",
                        S = "select_previous_sibling_node",
                        -- s = "select_next_sibling_node",

                        ["<BS>"] = "goto_previous_window",
                        h = "close_or_up",
                        l = "expand_or_down_or_open_with_window_picker",
                        J = "select_next_sibling_node",
                        K = "select_previous_sibling_node",
                        H = "select_up_node",
                        L = "select_down_node",
                        v = "vsplit_with_window_picker",
                        s = "vsplit_with_window_picker",

                        -- Unchanged mappings
                        ["<Esc>"] = "cancel",
                        y = "copy_to_clipboard",
                        x = "cut_to_clipboard",
                        p = "paste_from_clipboard",
                        c = "copy",
                        m = "move",
                        q = "close_window",
                        ["?"] = "show_help",
                    }
                },
                filesystem = {
                    filtered_items = {
                        visible = false,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_by_name = { ".git" },
                    },
                    use_libuv_file_watcher = true,
                    window = {
                        mappings = {
                            U = "navigate_up",

                            gr = "refresh",
                            -- H = "toggle_hidden",
                            gh = "toggle_hidden",
                            C = "add",
                            R = "set_root",

                            -- Unchanged mappings
                            ["/"] = "fuzzy_finder",
                        },
                        fuzzy_finder_mappings = {
                            ["<C-j>"] = "move_cursor_down",
                            ["<C-k>"] = "move_cursor_up",

                            -- Unchanged mappings
                            ["<down>"] = "move_cursor_down",
                            ["<C-n>"] = "move_cursor_down",
                            ["<up>"] = "move_cursor_up",
                            ["<C-p>"] = "move_cursor_up",
                        },
                    },
                },
            }
        end,
        main = "neo-tree",
        keys = {
            { "<Leader>op", "<Cmd>Neotree source=filesystem<CR>",             desc = "Project sidebar" },
            { "<Leader>oP", "<Cmd>Neotree source=filesystem reveal=true<CR>", desc = "Find file in project sidebar" },
        },
    },

    {
        dir = "@trouble@",
        name = "trouble.nvim",
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons" },
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
                breadcrumb = "󰁔",
                separator = "󰁔",
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
