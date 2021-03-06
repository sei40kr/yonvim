local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        p = {
            name = "+project",
            f = {
                function()
                    require("yvim.project").find_file_in_project()
                end,
                "Find file in project",
            },
            p = {
                function()
                    require("telescope").extensions.project.project({
                        display_type = "full",
                    })
                end,
                "Switch project",
            },
            t = { "<Cmd>TodoTrouble<CR>", "List project todos" },
        },
        ["<Space>"] = { "<Leader>pf", "Find file in project", noremap = false },
    })
end

return M
