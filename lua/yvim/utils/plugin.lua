local M = {}

function M.has(name)
    return require("lazy.core.config").plugins[name] ~= nil
end

return M
