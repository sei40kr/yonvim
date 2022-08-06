local M = {}

function M.find_file()
    require("telescope").extensions.file_browser.file_browser({
        cwd = vim.fn.expand("%:p:h"),
    })
end

function M.find_file_from_here()
    require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
end

function M.find_file_in_private_config()
    local path = require("yvim.util.path")

    require("telescope.builtin").find_files({ cwd = path.get_config_dir() })
end

function M.browse_private_config()
    local path = require("yvim.util.path")

    require("telescope").extensions.file_browser.file_browser({
        cwd = vim.loop.fs_realpath(path.get_config_dir()),
    })
end

return M
