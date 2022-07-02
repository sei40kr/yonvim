local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        q = {
            name = "+quit",
            q = { "<Cmd>qa<CR>", "Quit" },
            Q = { "<Cmd>qa!<CR>", "Quit without saving" },
        },
    })
end

return M
