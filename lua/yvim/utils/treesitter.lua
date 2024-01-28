local M = {}

-- Check if Treesitter highlight is enabled for the given buffer.
---@param bufnr number Buffer number, or 0 for current buffer
---@return boolean # True if Treesitter highlight is enabled in the given buffer
function M.is_highlight_enabled(bufnr)
    if bufnr == 0 then
        bufnr = vim.api.nvim_get_current_buf()
    end

    return require("vim.treesitter.highlighter").active[bufnr] ~= nil
end

return M
