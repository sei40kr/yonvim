local M = {}

function M.config()
    if yvim.completion.copilot.enable then
        require("copilot").setup({
            panel = { enabled = false },
            suggestion = { enabled = false },
        })
    end
end

return M
