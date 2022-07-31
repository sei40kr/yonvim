local M = {}

function M.config()
    require("session-lens").setup({ prompt_title = "Sessions" })
    require("telescope").load_extension("session-lens")
end

return M
