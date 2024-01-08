local M = {}

local _special_filetypes = { "help", "man", "qf" }

-- Buffer types to make the window special.
M.special_buftypes = { "help", "quickfix", "prompt" }

-- Get buffer filetypes that make the window special.
function M.get_special_filetypes()
    return _special_filetypes
end

-- Add the given filetypes as the ones that make the window special.
-- Make sure to call this function before loading any plugin.
---@param filetypes string[]
function M.add_special_filetypes(filetypes)
    for _, filetype in ipairs(filetypes) do
        table.insert(_special_filetypes, filetype)
    end
end

-- Check if the given window is special.
---@param winnr number Window number, or 0 for current window
function M.is_special(winnr)
    local bufnr = vim.api.nvim_win_get_buf(winnr)

    return vim.tbl_contains(M.special_buftypes, vim.bo[bufnr].buftype)
        or vim.tbl_contains(M.get_special_filetypes(), vim.bo[bufnr].filetype)
end

return M
