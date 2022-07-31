local M = {}

function M.config()
    require("mini.bufremove").setup({})
    require("mini.comment").setup({})
    require("mini.jump").setup({})
    require("mini.surround").setup({
        mappings = {
            add = "",
            delete = "ds",
            find = "",
            find_left = "",
            highlight = "",
            replace = "cs",
        },
    })
end

return M
