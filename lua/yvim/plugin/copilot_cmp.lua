local M = {}

function M.config()
    if yvim.completion.copilot.enable then
        require("copilot_cmp").setup()
    end
end

return M
