local M = {}

function M.set(mode, mappings)
    require("which-key").register(mappings, { mode = mode })
end

function M.set_leader(mode, mappings)
    require("which-key").register(mappings, {
        mode = mode,
        prefix = "<Leader>",
    })
end

function M.set_buflocal(buffer, mode, mappings)
    require("which-key").register(mappings, {
        mode = mode,
        buffer = buffer,
    })
end

function M.set_buflocal_leader(buffer, mode, mappings)
    require("which-key").register(mappings, {
        mode = mode,
        prefix = "<Leader>",
        buffer = buffer,
    })
end

return M
