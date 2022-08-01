local M = {}

function M.delete_buffer()
    require("close_buffers").delete({ type = "this" })
end

function M.delete_other_buffers()
    require("close_buffers").delete({ type = "other" })
end

function M.delete_unloaded_buffers()
    require("close_buffers").wipe({ type = "all" })
end

function M.new_empty_buffer()
    vim.api.nvim_set_current_buf(vim.api.nvim_create_buf(true, false))
end

return M
