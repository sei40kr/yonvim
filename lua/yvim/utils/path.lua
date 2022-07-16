local M = {}

local path_sep = package.config:sub(1, 1)

function M.join_paths(...)
    return table.concat({ ... }, path_sep)
end

function M.get_config_dir()
    local yvim_config_dir = os.getenv("YVIM_CONFIG_DIR")
    if yvim_config_dir then
        return yvim_config_dir
    end

    return vim.call("stdpath", "config")
end

function M.get_cache_dir()
    local yvim_cache_dir = os.getenv("YVIM_CACHE_DIR")
    if yvim_cache_dir then
        return yvim_cache_dir
    end

    return vim.fn.stdpath("cache")
end

function M.get_runtime_dir()
    local yvim_runtime_dir = os.getenv("YVIM_RUNTIME_DIR")
    if yvim_runtime_dir then
        return yvim_runtime_dir
    end

    return vim.fn.stdpath("data")
end

return M
