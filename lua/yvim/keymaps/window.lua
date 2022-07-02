local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        w = {
            name = "+window",
            ["+"] = { "<C-w>+", "Increase height" },
            ["-"] = { "<C-w>-", "Decrease height" },
            ["<"] = { "<C-w>\\<", "Decrease width" },
            ["="] = { "<C-w>=", "Equally high and wide" },
            [">"] = { "<C-w>>", "Increase width" },
            h = { "<C-w>h", "Go to the left window" },
            j = { "<C-w>j", "Go to the down window" },
            k = { "<C-w>k", "Go to the up window" },
            l = { "<C-w>l", "Go to the right window" },
            q = { "<C-w>q", "Quit a window" },
            s = { "<C-w>s", "Split window" },
            t = { "<C-w>t", "Break out into a new tab" },
            v = { "<C-w>v", "Split window vertically" },
            w = { "<C-w>w", "Switch windows" },
            x = { "<C-w>x", "Swap current with next" },
        },
    })
end

return M
