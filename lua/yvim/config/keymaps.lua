local Util = require("yvim.util")

local function map(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- Disable Ex mode
map("n", "Q", "<Nop>")

-- Escape sequence
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")

-- Clear search highlight
map("n", "<Esc>", "<Cmd>nohls<CR>", { remap = true })

map("n", "[<Space>", function()
    local lines = {}

    for _ = 1, vim.v.count1 do
        table.insert(lines, "")
    end

    vim.api.nvim_put(lines, "l", false, true)
end, { desc = "Insert newline above" })
map("n", "]<Space>", function()
    local pos = vim.api.nvim_win_get_cursor(0)
    local lines = {}

    for _ = 1, vim.v.count1 do
        table.insert(lines, "")
    end

    vim.api.nvim_put(lines, "l", true, false)
    vim.api.nvim_win_set_cursor(0, pos)
end, { desc = "Insert newline below" })

-- +buffer
local function kill_buffer()
    local cur_buf = vim.api.nvim_get_current_buf()
    require("yvim.utils.buffer").remove(function(buf)
        return buf == cur_buf
    end)
end
map("n", "[b", "<Cmd>bp<CR>", { desc = "Previous buffer" })
map("n", "]b", "<Cmd>bn<CR>", { desc = "Next buffer" })
map("n", "<Leader>bd", kill_buffer, { desc = "Kill buffer" })
map("n", "<Leader>bk", kill_buffer, { desc = "Kill buffer" })
map("n", "<Leader>bN", "<Cmd>ene<CR>", { desc = "New empty buffer" })
map(
    "n",
    "<Leader>bO",
    function()
        local cur_buf = vim.api.nvim_get_current_buf()
        require("yvim.utils.buffer").remove(function(buf)
            return buf ~= cur_buf
        end)
    end,
    { desc = "Kill other buffers" }
)
map("n", "<Leader>bs", "<Cmd>w<CR>", { desc = "Save buffer" })
map("n", "<Leader>bS", "<Cmd>wa<CR>", { desc = "Save all buffers" })
map("n", "<Leader>bz", "<Cmd>bun<CR>", { desc = "Unload buffer" })
map(
    "n",
    "<Leader>bZ",
    function()
        require("yvim.utils.buffer").remove(function(buf)
            return not vim.api.nvim_buf_is_loaded(buf)
        end, { wipeout = true })
    end,
    { desc = "Kill unloaded buffers" }
)

-- +code
map("n", "<Leader>cd", "gd", { remap = true, desc = "Jump to definition" })
map("n", "<Leader>cD", "gD", { remap = true, desc = "Jump to references" })
map("n", "<Leader>ck", "K", { remap = true, desc = "Jump to documentation" })

-- +file
map("n", "<Leader>fs", "<Cmd>w<CR>", { desc = "Save file" })

-- +help
if Util.has("noice.nvim") and Util.has("telescope.nvim") then
    map("n", "<Leader>hn", function()
        require("noice").cmd("telescope")
    end, { desc = "Notifications" })
end

-- +quit
map("n", "<Leader>qq", "<Cmd>qa<CR>", { desc = "Quit" })
map("n", "<Leader>qQ", "<Cmd>qa!<CR>", { desc = "Quit without saving" })

-- +window
map("n", "<Leader>w+", "<C-w>+", { desc = "Increase height" })
map("n", "<Leader>w-", "<C-w>-", { desc = "Decrease height" })
map("n", "<Leader>w<lt>", "<C-w><lt>", { desc = "Decrease width" })
map("n", "<Leader>w=", "<C-w>=", { desc = "Equally high and wide" })
map("n", "<Leader>w>", "<C-w>>", { desc = "Increase width" })
map("n", "<Leader>w_", "<C-w>_", { desc = "Set height" })
map("n", "<Leader>wb", "<C-w>b", { desc = "Go to the top-right window" })
map("n", "<Leader>wc", "<C-w>q", { desc = "Quit a window" })
map("n", "<Leader>wd", "<C-w>q", { desc = "Quit a window" })
map("n", "<Leader>wh", "<C-w>h", { desc = "Go to the left window" })
map("n", "<Leader>wj", "<C-w>j", { desc = "Go to the down window" })
map("n", "<Leader>wk", "<C-w>k", { desc = "Go to the up window" })
map("n", "<Leader>wl", "<C-w>l", { desc = "Go to the right window" })
map("n", "<Leader>wq", "<C-w>q", { desc = "Quit a window" })
map("n", "<Leader>wr", "<C-w>r", { desc = "Rotate upwards/rightwards" })
map("n", "<Leader>wR", "<C-w>R", { desc = "Rotate downwards/leftwards" })
map("n", "<Leader>ws", "<C-w>s", { desc = "Split window" })
map("n", "<Leader>wt", "<C-w>t", { desc = "Go to the top-left window" })
map("n", "<Leader>wT", "<C-w>T", { desc = "Break out into a new tab" })
map("n", "<Leader>wv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<Leader>ww", "<C-w>w", { desc = "Next window" })
map("n", "<Leader>wW", "<C-w>W", { desc = "Previous window" })

-- Load user-defined keymaps
for _, keymap in ipairs(yvim.keymaps) do
    local opts = {
        silent = keymap.silent ~= false,
        remap = keymap.remap,
        nowait = keymap.nowait,
        desc = keymap.desc,
    }
    map(keymap.mode or "n", keymap[1], keymap[2], opts)
end