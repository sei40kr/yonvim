local M = {}

local util = require("yvim.utils.buffer")

function M.kill_buffer()
    local cur_buf = vim.api.nvim_get_current_buf()

    util.remove(function(buf)
        return buf == cur_buf
    end)
end

function M.kill_other_buffers()
    local cur_buf = vim.api.nvim_get_current_buf()

    util.remove(function(buf)
        return buf ~= cur_buf
    end)
end

function M.kill_unloaded_buffers()
    util.remove(function(buf)
        return not vim.api.nvim_buf_is_loaded(buf)
    end, { wipeout = true })
end

function M.new_empty_buffer()
    vim.api.nvim_set_current_buf(vim.api.nvim_create_buf(true, false))
end

return M
