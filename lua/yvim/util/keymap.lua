local M = {}

function M.set(mode, keymaps)
    require("which-key").register(keymaps, { mode = mode })
end

function M.set_leader(mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = "<Leader>",
    })
end

function M.buf_set(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        buffer = buffer,
    })
end

function M.buf_set_leader(buffer, mode, keymaps)
    require("which-key").register(keymaps, {
        mode = mode,
        prefix = "<Leader>",
        buffer = buffer,
    })
end

return M
