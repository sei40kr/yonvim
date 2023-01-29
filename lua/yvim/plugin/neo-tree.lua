local M = {}

function M.config()
    vim.g.neo_tree_remove_legacy_commands = 1

    require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = yvim.ui.border,
        default_component_configs = {
            container = { enable_character_fade = false },
            indent = { with_markers = false },
        },
        window = { width = 35 },
    })
end

return M
