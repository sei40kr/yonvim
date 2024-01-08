return function(state)
    local renderer = require("neo-tree.ui.renderer")
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
