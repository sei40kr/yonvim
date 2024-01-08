local M = {}

-- Delete a buffer. If `mini.bufremove` is installed, delete a buffer while
-- preserving the window layout.
---@param bufnr number Buffer handle, or 0 for current buffer
---@param force boolean Whether to force the deletion when the buffer is modified
---@return boolean # Whether the buffer was successfully deleted
function M.delete(bufnr, force)
    if require("yvim.utils.plugin").has("mini.bufremove") then
        return require("mini.bufremove").delete(bufnr, force) or false
    end

    if bufnr == 0 then
        bufnr = vim.api.nvim_get_current_buf()
    end

    if force then
        vim.cmd(string.format([[silent bdelete! %d]], bufnr))
    else
        vim.cmd(string.format([[silent bdelete %d]], bufnr))
    end

    return not vim.api.nvim_buf_is_loaded(bufnr)
end

-- Unload a buffer without saving unsaved changes. If `mini.bufremove` is
-- installed, unload a buffer while preserving the window layout.
---@param bufnr number Buffer handle, or 0 for current buffer
function M.force_unload(bufnr)
    if bufnr == 0 then
        bufnr = vim.api.nvim_get_current_buf()
    end

    if require("yvim.utils.plugin").has("mini.bufremove") then
        require("mini.bufremove").unshow(bufnr)
    end

    vim.cmd(string.format([[silent bunload! %d]], bufnr))
end

return M
