return function(state)
    local node = state.tree:get_node()

    if node:is_expanded() then
        require("neo-tree.sources.common.commands").close_node(state)
        return
    end

    local parent_id = node:get_parent_id()
    if parent_id == nil then
        return
    end

    require("neo-tree.ui.renderer").focus_node(state, parent_id)
end
