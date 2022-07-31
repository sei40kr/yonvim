local M = {}

function M.config()
    require("todo-comments").setup({
        signs = false,
        keywords = {
            PERF = { icon = "  ", alt = { "OPTIMIZE" } },
            NOTE = { icon = "  ", color = "hint" },
            REVIEW = { icon = "  ", color = "info" },
            TODO = { icon = "  ", color = "info" },
            HACK = { icon = "  ", color = "warning" },
            XXX = { icon = "  ", color = "warning" },
            FIXME = { icon = "  ", color = "error" },
        },
        highlight = {
            before = "",
            keyword = "bg",
            after = "",
        },
    })
end

return M
