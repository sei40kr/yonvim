local M = {}

function M.setup() end

function M.config()
    -- auto-session
    require("auto-session").setup({
        auto_session_root_dir = join_paths(get_runtime_dir(), "sessions"),
    })

    -- session-lens
    require("session-lens").setup({ prompt_title = "Sessions" })
    require("telescope").load_extension("session-lens")
end

return M
