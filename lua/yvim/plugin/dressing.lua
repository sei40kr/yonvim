local M = {}

function M.config()
    require("dressing").setup({
        input = {
            default_prompt = "Input",
            prompt_align = "center",
            relative = "editor",
            winblend = 0,
        },
        select = { backend = { "telescope" } },
    })
end

return M
