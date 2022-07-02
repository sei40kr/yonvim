local M = {}

function M.setup()
    require("yvim.utils.keymap").set("n", {
        gs = {
            name = "+jump",
        },
    })

    vim.keymap.set("n", "gs+", function()
        require("hop").hint_lines_skip_whitespace({
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
        })
    end)
    vim.keymap.set("n", "gs-", function()
        require("hop").hint_lines_skip_whitespace({
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        })
    end)
    vim.keymap.set("n", "gsb", function()
        require("hop").hint_words({
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        })
    end)
    vim.keymap.set("n", "gse", function()
        require("hop").hint_words({
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
        })
    end)
    vim.keymap.set("n", "gsf", function()
        require("hop").hint_char1({
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
        })
    end)
    vim.keymap.set("n", "gsF", function()
        require("hop").hint_char1({
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        })
    end)
    vim.keymap.set("n", "gsj", function()
        require("hop").hint_lines({
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
        })
    end)
    vim.keymap.set("n", "gsk", function()
        require("hop").hint_lines({
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        })
    end)
    vim.keymap.set("n", "gss", function()
        require("hop").hint_char2()
    end)
end

return M
