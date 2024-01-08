local M = {}

function M.opts()
    local yonvim_config = require("yvim.config").get()

    return {
        close_if_last_window = false,
        popup_border_style = yonvim_config.ui.border,
        use_popups_for_input = false,
        enable_diagnostics = false,
        default_component_configs = {
            container = { enable_character_fade = false },
            indent = { with_markers = true },
            icon = {
                folder_closed = " ",
                folder_open = " ",
                folder_empty = " ",
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
            goto_previous_window = require("yvim.plugins.neo-tree-nvim.actions.goto-previous-window"),
            select_up_node = require("yvim.plugins.neo-tree-nvim.actions.select-up-node"),
            select_down_node = require("yvim.plugins.neo-tree-nvim.actions.select-down-node"),
            select_previous_sibling_node = require("yvim.plugins.neo-tree-nvim.actions.select-previous-sibling-node"),
            select_next_sibling_node = require("yvim.plugins.neo-tree-nvim.actions.select-next-sibling-node"),
            close_or_up = require("yvim.plugins.neo-tree-nvim.actions.close-or-up"),
            expand_or_down_or_open_with_window_picker = require(
                "yvim.plugins.neo-tree-nvim.actions.expand-or-down-or-open-with-window-picker"
            ),
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
end

return M
