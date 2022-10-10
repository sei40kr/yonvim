local M = {}

function M.del_buf()
    require("close_buffers").delete({ type = "this" })
end

local function del_other_bufs()
    require("close_buffers").delete({ type = "other" })
end

local function del_unloaded_bufs()
    require("close_buffers").wipe({ type = "all" })
end

local function new_empty_buf()
    vim.api.nvim_set_current_buf(vim.api.nvim_create_buf(true, false))
end

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
            d = { M.del_buf, "Kill buffer" },
            k = { M.del_buf, "Kill buffer" },
            N = { new_empty_buf, "New empty buffer" },
            O = { del_other_bufs, "Kill other buffers" },
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
            Z = { del_unloaded_bufs, "Kill unloaded buffers" },
        },
    })
end

return M
