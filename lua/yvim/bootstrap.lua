local M = {}

local path_sep = package.config:sub(1, 1)

function M.init()
    function _G.join_paths(...)
        return table.concat({ ... }, path_sep)
    end

    function _G.get_config_dir()
        local yvim_config_dir = os.getenv("YVIM_CONFIG_DIR")
        if yvim_config_dir then
            return yvim_config_dir
        end

        return vim.fn.stdpath("config")
    end

    function _G.get_cache_dir()
        local yvim_cache_dir = os.getenv("YVIM_CACHE_DIR")
        if yvim_cache_dir then
            return yvim_cache_dir
        end

        return vim.fn.stdpath("cache")
    end

    function _G.get_runtime_dir()
        local yvim_runtime_dir = os.getenv("YVIM_RUNTIME_DIR")
        if yvim_runtime_dir then
            return yvim_runtime_dir
        end

        return vim.fn.stdpath("data")
    end

    vim.api.nvim_create_augroup("init", {})
    vim.api.nvim_create_autocmd({ "FileType" }, {
        pattern = { "help" },
        callback = function(arg)
            vim.api.nvim_buf_set_keymap(
                arg.buf,
                "n",
                "q",
                "<Cmd>bdelete<CR>",
                {}
            )
        end,
    })

    require("yvim.config").load()

    require("yvim.core").setup()
    require("yvim.session").setup()
    require("yvim.treesitter").setup()
    require("yvim.editors").setup()
    require("yvim.lsp").setup()
    require("yvim.snippets").setup()
    require("yvim.completion").setup()
    require("yvim.terminal").setup()
    require("yvim.tools").setup()
    require("yvim.ui").setup()

    require("yvim.core").config()
    require("yvim.session").config()
    require("yvim.treesitter").config()
    require("yvim.editors").config()
    require("yvim.lsp").config()
    require("yvim.snippets").config()
    require("yvim.completion").config()
    require("yvim.terminal").config()
    require("yvim.tools").config()
    require("yvim.ui").config()

    require("yvim.keymaps").setup()
end

return M
