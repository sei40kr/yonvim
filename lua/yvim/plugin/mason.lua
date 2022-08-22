local M = {}

function M.setup()
    require("yvim.util.special_buffer").register_filetype("mason.nvim")
end

function M.config()
    local path = require("yvim.util.path")

    require("mason").setup({
        border = "rounded",
        ui = {
            border = yvim.ui.border,
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
