local M = {}

function M.config()
    local path = require("yvim.util.path")

    require("mason").setup({
        border = "rounded",
        ui = {
            icons = {
                server_installed = "●",
                server_pending = "●",
                server_uninstalled = "●",
            },
        },
        install_root_dir = path.join_paths(path.get_runtime_dir(), "mason"),
    })
end

return M
