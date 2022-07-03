local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        w = {
            name = "+window",
            ["+"] = { "<C-w>+", "Increase height" },
            ["-"] = { "<C-w>-", "Decrease height" },
            ["<lt>"] = { "<C-w><lt>", "Decrease width" },
            ["="] = { "<C-w>=", "Equally high and wide" },
            [">"] = { "<C-w>>", "Increase width" },
            ["_"] = { "<C-w>_", "Set height" },
            b = { "<C-w>b", "Go to the top-right window" },
            c = { "<C-w>q", "Quit a window" },
            d = { "<C-w>q", "Quit a window" },
            h = { "<C-w>h", "Go to the left window" },
            j = { "<C-w>j", "Go to the down window" },
            k = { "<C-w>k", "Go to the up window" },
            l = { "<C-w>l", "Go to the right window" },
            q = { "<C-w>q", "Quit a window" },
            r = { "<C-w>", "Rotate upwards/rightwards" },
            R = { "<C-w>", "Rotate downwards/leftwards" },
            s = { "<C-w>s", "Split window" },
            t = { "<C-w>t", "Go to the top-left window" },
            T = { "<C-w>T", "Break out into a new tab" },
            v = { "<C-w>v", "Split window vertically" },
            W = { "<C-w>W", "Previous window" },
            w = { "<C-w>w", "Next window" },
            ["|"] = { "<C-w>|", "Set width" },
        },
    })
end

return M
