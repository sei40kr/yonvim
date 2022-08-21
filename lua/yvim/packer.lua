local M = {}

local function get_package_root()
    local path = require("yvim.util.path")

    return os.getenv("YVIM_PACKER_PACKAGE_ROOT")
        or path.join_paths(vim.fn.stdpath("data"), "site", "pack")
end

local function get_compile_path()
    local path = require("yvim.util.path")

    return os.getenv("YVIM_PACKER_COMPILE_PATH")
        or path.join_paths(
            vim.fn.stdpath("config"),
            "plugin",
            "packer_compiled.lua"
        )
end

function M.init()
    local packer = require("packer")

    packer.init({
        package_root = get_package_root(),
        compile_path = get_compile_path(),
    })

    local ok, _ = pcall(require, "packer_compiled")
    if not ok then
        packer.startup(require("yvim.packer_plugins"))
    end
end

function M.plugin_loaded(plugin)
    return packer_plugins
        and packer_plugins[plugin]
        and packer_plugins[plugin].loaded
end

return M
