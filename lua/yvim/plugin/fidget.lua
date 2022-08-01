local M = {}

function M.config()
    require("fidget").setup({
        text = { spinner = yvim.ui.spinner },
    })
end

return M
