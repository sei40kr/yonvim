local M = {}

local function refresh_status(trigger)
    if trigger ~= "gitsigns" then
        require("gitsigns").refresh()
    end
    if trigger ~= "neogit" then
        require("neogit").refresh_manually()
    end
end

function M.load_autocmds()
    local group = vim.api.nvim_create_augroup("yvim_git", {})
    vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = "GitSignsUpdate",
        callback = function() refresh_status("gitsigns") end
    })
    vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = { "NeogitStatusRefreshed", "NeogitCommitComplete" },
        callback = function() refresh_status("neogit") end
    })
end

return M
