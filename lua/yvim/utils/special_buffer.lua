local M = {}

local buftypes = {
    quickfix = true,
    help = true,
    terminal = true,
}
local filetypes = {}

function M.get_buftypes()
    return vim.tbl_keys(buftypes)
end

function M.add_buftype(buftype)
    buftypes[buftype] = true
end

function M.get_filetypes()
    return vim.tbl_keys(filetypes)
end

function M.add_filetype(filetype)
    filetypes[filetype] = true
end

function M.is_special_buffer(buffer)
    local buftype = vim.api.nvim_buf_get_option(buffer, "buftype")
    if buftypes[buftype] ~= nil then
        return true
    end

    local filetype = vim.api.nvim_buf_get_option(buffer, "filetype")
    if filetypes[filetype] ~= nil then
        return true
    end

    return false
end

return M
