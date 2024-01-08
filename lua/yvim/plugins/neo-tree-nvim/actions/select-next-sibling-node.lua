return function(state)
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
        require("neo-tree.ui.renderer").focus_node(state, child_ids[index + 1])
    end
end
