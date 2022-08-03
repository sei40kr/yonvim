local M = {}

function M.config()
    require("lsp_signature").setup({
        bind = false,
        fix_pos = false,
        hint_enable = false,
        handler_opts = {
            border = yvim.ui.border,
        },
        zindex = require("yvim.ui.zindex").LSP_SIGNATURE_HELP,
    })
end

return M
