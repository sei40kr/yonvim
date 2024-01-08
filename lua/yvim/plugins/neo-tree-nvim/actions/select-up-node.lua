return function(state)
    local node = state.tree:get_node()

    local parent_id = node:get_parent_id()
    if parent_id == nil then
        return
    end

    require("neo-tree.ui.renderer").focus_node(state, parent_id)
end
