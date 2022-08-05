local Keymaps = {}

Keymaps.init = function()
    local keymaps = {}
    setmetatable(keymaps, { __index = Keymaps })
    return keymaps
end

function Keymaps:set(mode, keymaps)
    require("which-key").register(keymaps, { mode = mode })
end

function Keymaps:set_leader(mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = "<Leader>",
    })
end

function Keymaps:set_for_buffer(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        buffer = buffer,
    })
end

function Keymaps:set_leader_for_buffer(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = "<Leader>",
        buffer = buffer,
    })
end

return Keymaps.init()
