local M = {}

function M.opts()
    local common_commands = require("neo-tree.sources.common.commands")
    local fs = require("neo-tree.sources.filesystem")
    local renderer = require("neo-tree.ui.renderer")
    local utils = require("neo-tree.utils")
    local yonvim_config = require("yvim.config").get()

    local function goto_previous_window()
        vim.cmd [[wincmd p]]
    end

    local function select_up_node(state)
        local node = state.tree:get_node()

        local parent_id = node:get_parent_id()
        if parent_id == nil then
            return
        end

        renderer.focus_node(state, parent_id)
    end

    local function select_down_node(state)
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
    end

    local function select_previous_sibling_node(state)
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
    end

    local function select_next_sibling_node(state)
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
    end

    local function close_or_up(state)
        local node = state.tree:get_node()

        if node:is_expanded() then
            common_commands.close_node(state)
            return
        end

        local parent_id = node:get_parent_id()
        if parent_id == nil then
            return
        end

        renderer.focus_node(state, parent_id)
    end

    local function expand_or_down_or_open_with_window_picker(state)
        local node = state.tree:get_node()

        if node:is_expanded() then
            if node:has_children() then
                renderer.focus_node(state, node:get_child_ids()[1])
            end

            return
        end

        if utils.is_expandable(node) then
            common_commands.toggle_node(state, utils.wrap(fs.toggle_directory, state))
            return
        end

        common_commands.open_with_window_picker(state, nil)
    end

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
            goto_previous_window = goto_previous_window,
            select_up_node = select_up_node,
            select_down_node = select_down_node,
            select_previous_sibling_node = select_previous_sibling_node,
            select_next_sibling_node = select_next_sibling_node,
            close_or_up = close_or_up,
            expand_or_down_or_open_with_window_picker = expand_or_down_or_open_with_window_picker,
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
