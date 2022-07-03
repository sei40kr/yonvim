local M = {}

function M.setup()
    local keymap = require("yvim.utils.keymap")

    keymap.set_leader("n", {
        b = {
            name = "+buffer",
            b = {
                function()
                    require("telescope.builtin").buffers()
                end,
                "Switch buffer",
            },
            d = {
                function()
                    require("mini.bufremove").delete()
                end,
                "Kill buffer",
            },
            k = {
                function()
                    require("mini.bufremove").delete()
                end,
                "Kill buffer",
            },
            N = {
                function()
                    require("yvim.buffer").new_empty_buffer()
                end,
                "New empty buffer",
            },
            O = {
                function()
                    require("yvim.buffer").delete_other_buffers()
                end,
                "Kill other buffers",
            },
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
            Z = {
                function()
                    require("yvim.buffer").delete_unloaded_buffers()
                end,
                "Kill unloaded buffers",
            },
        },
    })

    keymap.set("n", {
        ["[b"] = { "<Cmd>bp<CR>", "Previous buffer" },
        ["]b"] = { "<Cmd>bn<CR>", "Next buffer" },
    })

    vim.keymap.set("n", "<M-Left>", "<Cmd>BufferLineCyclePrev<CR>")
    vim.keymap.set("n", "<M-Right>", "<Cmd>BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<M-S-Left>", "<Cmd>BufferLineMovePrev<CR>")
    vim.keymap.set("n", "<M-S-Right>", "<Cmd>BufferLineMoveNext<CR>")
end

return M
