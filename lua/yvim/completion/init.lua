local M = {}

local function has_word_before()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    local line = vim.api.nvim_get_current_line()

    return col ~= 0 and line:sub(col, col):match("%s") == nil
end

local function tab()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
    elseif cmp.visible() then
        cmp.select_next_item()
    elseif has_word_before() then
        cmp.complete()
    else
        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<Tab>", true, true, true),
            "n",
            true
        )
    end
end

local function s_tab()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    elseif cmp.visible() then
        cmp.select_prev_item()
    else
        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true),
            "n",
            true
        )
    end
end

local function complete_buffer()
    require("cmp").complete({ config = { sources = { { name = "buffer" } } } })
end

local function complete_omni()
    require("cmp").complete({ config = { sources = { { name = "omni" } } } })
end

local function complete_path()
    require("cmp").complete({ config = { sources = { { name = "path" } } } })
end

local function complete_spell()
    require("cmp").complete({ config = { sources = { { name = "spell" } } } })
end

function M.setup()
    vim.keymap.set({ "i", "s" }, "<Tab>", tab)
    vim.keymap.set({ "i", "s" }, "<S-Tab>", s_tab)
    vim.keymap.set("i", "<C-x><C-f>", complete_path)
    vim.keymap.set("i", "<C-x><C-k>", complete_buffer)
    vim.keymap.set("i", "<C-x><C-o>", complete_omni)
    vim.keymap.set("i", "<C-x>s", complete_spell)
end

function M.config()
    -- nvim-cmp
    require("yvim.plugin.cmp").config()

    -- copilot.lua
    if yvim.completion.copilot.enable then
        require("yvim.plugin.copilot").config()
    end
end

return M
