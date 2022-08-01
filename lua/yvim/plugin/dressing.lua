local M = {}

function M.config()
    require("dressing").setup({
        input = {
            default_prompt = "Input",
            prompt_align = "center",
            border = yvim.ui.border,
            relative = "editor",
            winblend = 0,
        },
        select = { backend = { "telescope" } },
    })
end

return M
