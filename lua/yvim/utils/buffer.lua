local M = {}

local _special_filetypes = { "checkhealth", "help", "man", "qf", "terminal" }

-- Types of special buffers that should be ignored by some plugins.
M.special_buftypes = { "help", "nofile", "quickfix", "terminal", "prompt" }

-- Get special filetypes that should be ignored by some plugins.
---@return string[] # The list of special filetypes
function M.get_special_filetypes()
    return _special_filetypes
end

-- Add the given filetypes as special filetypes that should be ignored by some
-- plugins. Make sure to call this function before loading any plugins.
---@param filetypes string[] The list of special filetypes to add
function M.add_special_filetypes(filetypes)
    for _, filetype in ipairs(filetypes) do
        table.insert(_special_filetypes, filetype)
    end
end

-- Check whether the given buffer is a special buffer.
---@param bufnr number Buffer handle, or 0 for current buffer
function M.is_special(bufnr)
    local special_filetypes = M.get_special_filetypes()

    return vim.tbl_contains(M.special_buftypes, vim.bo[bufnr].buftype)
        or vim.tbl_contains(special_filetypes, vim.bo[bufnr].filetype)
end

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
