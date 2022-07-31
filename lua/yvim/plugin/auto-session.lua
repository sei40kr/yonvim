local M = {}

function M.config()
    local path = require("yvim.util.path")

    require("auto-session").setup({
        auto_session_root_dir = path.join_paths(
            path.get_runtime_dir(),
            "sessions"
        ),
    })
end

return M
