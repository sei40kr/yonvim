local M = {}

function M.config()
    require("neogit").setup({
        disable_hint = true,
        disable_context_highlighting = true,
        disable_commit_confirmation = true,
        disable_insert_on_commit = false,
        commit_popup = { kind = "tab" },
        signs = {
            section = { "", "" },
            item = { "", "" },
        },
        integrations = { diffview = true },
    })
end

return M
