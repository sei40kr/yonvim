local M = {}

function M.config()
    if yvim.completion.copilot.enable then
        vim.defer_fn(function()
            require("copilot").setup()
        end, 100)
    end
end

return M
