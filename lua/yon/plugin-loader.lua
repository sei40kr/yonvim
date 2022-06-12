local M = {}

function M.load(plugins)
    vim.cmd([[packadd packer.nvim]])
    local packer = require("packer")

    packer.reset()
    packer.startup(function(use)
        for _, plugin in ipairs(plugins) do
            use(plugin)
        end
    end)
end

return M
