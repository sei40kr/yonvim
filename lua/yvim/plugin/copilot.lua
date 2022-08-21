local M = {}

function M.config()
    if yvim.completion.copilot.enable then
        vim.schedule(function()
            require("copilot").setup()
        end)
    end
end

return M
