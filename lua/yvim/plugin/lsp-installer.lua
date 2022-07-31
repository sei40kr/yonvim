local M = {}

function M.config()
    local path = require("yvim.util.path")

    require("nvim-lsp-installer").setup({
        ui = {
            icons = {
                server_installed = "●",
                server_pending = "●",
                server_uninstalled = "●",
            },
        },
        install_root_dir = path.join_paths(path.get_runtime_dir(), "lsp"),
    })
end

return M
