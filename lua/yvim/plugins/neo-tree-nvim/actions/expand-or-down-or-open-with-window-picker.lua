return function(state)
    local common_commands = require("neo-tree.sources.common.commands")
    local utils = require("neo-tree.utils")
    local node = state.tree:get_node()

    if node:is_expanded() then
        if node:has_children() then
            require("neo-tree.ui.renderer").focus_node(
                state,
                node:get_child_ids()[1]
            )
        end

        return
    end

    if utils.is_expandable(node) then
        common_commands.toggle_node(
            state,
            utils.wrap(
                require("neo-tree.sources.filesystem").toggle_directory,
                state
            )
        )
        return
    end

    common_commands.open_with_window_picker(state, nil)
end
