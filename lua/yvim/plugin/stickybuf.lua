local M = {}

function M.config()
    local stickybuf = require("stickybuf")

    local special_buffer = require("yvim.util.special_buffer")

    local filetypes = {}
    for _, filetype in ipairs(special_buffer.get_filetypes()) do
        filetypes[filetype] = "filetype"
    end

    stickybuf.setup({
        get_auto_pin = function(bufnr)
            return stickybuf.should_auto_pin(bufnr)
                or vim.tbl_contains(filetypes, vim.bo[bufnr].filetype)
        end,
    })
end

return M
