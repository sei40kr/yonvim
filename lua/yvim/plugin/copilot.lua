local M = {}

function M.config()
    vim.schedule(function()
        require("copilot").setup()
    end)
end

return M
