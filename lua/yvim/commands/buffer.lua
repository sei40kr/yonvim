local M = {}

local function delete_buffers(bufnrs)
    local buffer_util = require("yvim.utils.buffer")
    local count = 0

    if #bufnrs == 0 then
        vim.notify("No buffers to delete", vim.log.levels.WARN)
        return
    end

    for _, bufnr in ipairs(bufnrs) do
        if buffer_util.delete(bufnr, false) then
            count = count + 1
        end
    end

    vim.notify(string.format("Deleted %d buffers", count))
end

function M.delete_current_buffer()
    delete_buffers({ 0 })
end

function M.delete_other_buffers()
    local current_bufnr = vim.api.nvim_get_current_buf()

    delete_buffers(vim.tbl_filter(function(bufnr)
        return bufnr ~= current_bufnr and vim.bo[bufnr].buflisted
    end, vim.api.nvim_list_bufs()))
end

function M.force_to_unload_current_buffer()
    require("yvim.utils.buffer").force_unload(0)
end

function M.wipeout_unloaded_buffers()
    local count = 0

    for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
        if not vim.api.nvim_buf_is_loaded(bufnr) then
            count = count + 1
            vim.cmd.bwipeout({
                bang = true,
                args = { bufnr },
                mods = { silent = true },
            })
        end
    end

    vim.notify(string.format("Wiped out %d unloaded buffers", count))
end

return M
