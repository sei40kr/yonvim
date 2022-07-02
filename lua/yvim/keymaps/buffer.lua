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
                    require("yvim.api.buffers").new_empty_buffer()
                end,
                "New empty buffer",
            },
            O = {
                function()
                    require("yvim.api.buffers").delete_other_buffers()
                end,
                "Kill other buffers",
            },
            p = { "<Cmd>BufferLineCyclePrev<CR>", "Previous buffer" },
            n = { "<Cmd>BufferLineCycleNext<CR>", "Next buffer" },
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
                    require("yvim.api.buffers").delete_unloaded_buffers()
                end,
                "Kill unloaded buffers",
            },
        },
    })

    keymap.set("n", {
        ["[b"] = { "<Cmd>BufferLineCyclePrev<CR>", "Previous buffer" },
        ["]b"] = { "<Cmd>BufferLineCycleNext<CR>", "Next buffer" },
    })
end

return M
