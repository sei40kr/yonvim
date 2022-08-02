local M = {}

function M.setup()
    local special_buffer = require("yvim.util.special_buffer")

    -- diffview.nvim
    special_buffer.register_filetype("DiffviewFiles")

    -- nvim-tree.lua
    special_buffer.register_filetype("NvimTree")

    -- tokyonight.nvim
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_lualine_bold = true

    -- trouble.lua
    special_buffer.register_filetype("Trouble")

    local group = vim.api.nvim_create_augroup("YvimUI", {})
    vim.api.nvim_create_autocmd("VimEnter", {
        group = group,
        pattern = "*",
        callback = function()
            -- indent-blankline.nvim
            -- HACK: Prevent indent-blankline.nvim overriding colorscheme
            --  highlights
            vim.g.__indent_blankline_setup_completed = true
            vim.cmd([[packadd indent-blankline.nvim]])
            require("yvim.plugin.indent-blankline").config()
        end,
    })
end

function M.config()
    -- bufferline.nvim
    require("yvim.plugin.bufferline").config()

    -- diffview.nvim
    require("yvim.plugin.diffview").config()

    -- dressing.nvim
    require("yvim.plugin.dressing").config()

    -- gitsigns.nvim
    require("yvim.plugin.gitsigns").config()

    -- lualine.nvim
    require("yvim.plugin.lualine").config()

    -- nvim-tree.lua
    require("yvim.plugin.tree").config()

    -- telescope.nvim
    require("yvim.plugin.telescope").config()

    -- trouble.nvim
    require("yvim.plugin.trouble").config()

    -- which-key.nvim
    require("yvim.plugin.which-key").config()

    -- todo-comments.nvim
    require("yvim.plugin.todo-comments").config()

    -- tokyonight.nvim
    require("yvim.plugin.tokyonight").config()
end

return M
