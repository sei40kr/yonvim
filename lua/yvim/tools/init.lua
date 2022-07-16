local M = {}

function M.setup() end

function M.config()
    -- neogit
    require("neogit").setup({
        disable_hint = true,
        disable_context_highlighting = true,
        disable_commit_confirmation = true,
        commit_popup = { kind = "tab" },
        signs = {
            section = { "", "" },
            item = { "", "" },
        },
        integrations = { diffview = true },
    })

    -- octo.nvim
    require("octo").setup({
        right_bubble_delimiter = "",
        left_bubble_delimiter = "",
    })
end

return M
