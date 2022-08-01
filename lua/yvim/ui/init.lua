local M = {}

function M.setup()
    local special_buffer = require("yvim.util.special_buffer")

    -- diffview.nvim
    special_buffer.register_filetype("DiffviewFiles")

    -- indent-blankline.nvim
    vim.g.indent_blankline_filetype_exclude = special_buffer.get_filetypes()
    vim.g.indent_blankline_buftype_exclude = special_buffer.get_buftypes()

    -- nvim-tree.lua
    special_buffer.register_filetype("NvimTree")

    -- tokyonight.nvim
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_lualine_bold = true

    -- trouble.lua
    special_buffer.register_filetype("Trouble")
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

    -- indent-blankline.nvim
    require("yvim.plugin.indent-blankline").config()

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
