local M = {}

function M.config()
    local special_buffer = require("yvim.util.special_buffer")

    local filetypes = {}
    for _, filetype in ipairs(special_buffer.get_filetypes()) do
        filetypes[filetype] = "filetype"
    end

    require("stickybuf").setup({
        buftype = {
            [""] = false,
            acwrite = false,
            help = "buftype",
            nofile = false,
            nowrite = false,
            quickfix = "buftype",
            terminal = false,
            prompt = "bufnr",
        },
        filetype = filetypes,
    })
end

return M
