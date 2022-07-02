local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        f = {
            name = "+file",
            f = {
                function()
                    require("yvim.api.file").find_file()
                end,
                "Find file",
            },
            F = {
                function()
                    require("yvim.api.file").find_file_from_here()
                end,
                "Find file from here",
            },
            r = {
                function()
                    require("telescope.builtin").oldfiles()
                end,
                "Recent files",
            },
            s = { "<Cmd>w<CR>", "Save file" },
        },
    })
end

return M
