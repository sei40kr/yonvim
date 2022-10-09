local M = {}

function M.config()
    require("virt-column").setup({ char = "│" })
end

return M
