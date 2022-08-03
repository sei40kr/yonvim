local M = {}

function M.config()
    require("fidget").setup({
        text = { spinner = yvim.ui.spinner },
        window = {
            zindex = require("yvim.ui.zindex").LSP_PROGRESS,
        },
    })
end

return M
