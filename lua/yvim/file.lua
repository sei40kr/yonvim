local M = {}

local function find_file_from_here()
    require("telescope.builtin").find_files({
        cwd = vim.fn.expand("%:p:h", false, false),
    })
end

local function open_recent_file()
    require("telescope.builtin").oldfiles()
end

local function browse_file()
    require("telescope").extensions.file_browser.file_browser({
        cwd = vim.fn.expand("%:p:h", false, false),
    })
end

local function find_file_in_private_config()
    local path = require("yvim.util.path")

    require("telescope.builtin").find_files({ cwd = path.get_config_dir() })
end

local function browse_private_config()
    local path = require("yvim.util.path")

    require("telescope").extensions.file_browser.file_browser({
        cwd = vim.loop.fs_realpath(path.get_config_dir()),
    })
end

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", {
        f = {
            f = { browse_file, "Find file" },
            F = { find_file_from_here, "Find file from here" },
            p = { find_file_in_private_config, "Find file in private config" },
            P = { browse_private_config, "Browse private config" },
            r = { open_recent_file, "Recent files" },
            s = { "<Cmd>w<CR>", "Save file" },
        },
    })
end

return M
