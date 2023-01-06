local M = {}

local commands = require("yvim.commands.buffer")

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set("n", {
        ["[b"] = { "<Cmd>bp<CR>", "Previous buffer" },
        ["]b"] = { "<Cmd>bn<CR>", "Next buffer" },
    })
    keymap:set_leader("n", {
        b = {
            b = {
                function()
                    require("telescope.builtin").buffers()
                end,
                "Switch buffer",
            },
            d = { commands.kill_buffer, "Kill buffer" },
            k = { commands.kill_buffer, "Kill buffer" },
            N = { commands.new_empty_buffer, "New empty buffer" },
            O = { commands.kill_other_buffers, "Kill other buffers" },
            p = { "[b", "Previous buffer", noremap = false },
            n = { "]b", "Next buffer", noremap = false },
            s = { "<Cmd>w<CR>", "Save buffer" },
            S = { "<Cmd>wa<CR>", "Save all buffers" },
            z = {
                function()
                    vim.api.nvim_buf_delete(0, { unload = true })
                end,
                "Unload buffer",
            },
            Z = { commands.kill_unloaded_buffers, "Kill unloaded buffers" },
        },
    })
end

return M
