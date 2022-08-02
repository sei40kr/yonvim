local M = {}

function M.setup()
    -- mini.nvim
    vim.g.miniai_disable = true
    vim.g.minibufremove_disable = true
    vim.g.minicompletion_disable = true
    vim.g.minicursorword_disable = true
    vim.g.minidoc_disable = true
    vim.g.miniindentscope_disable = true
    vim.g.minijump2d_disable = true
    vim.g.minipairs_disable = true
    vim.g.minisessions_disable = true
    vim.g.ministarter_disable = true
    vim.g.ministatusline_disable = true
    vim.g.minitabline_disable = true
    vim.g.minitest_disable = true
    vim.g.minitrailspace_disable = true
    vim.api.nvim_set_keymap(
        "n",
        "ys",
        'luaeval(\'require("mini.surround").operator("add")\')',
        { noremap = true, silent = true, expr = true }
    )
    vim.api.nvim_set_keymap(
        "x",
        "S",
        ':<C-u>lua MiniSurround.add("visual")<CR>',
        { noremap = true, silent = true }
    )
end

function M.config()
    -- close-buffers.nvim
    require("yvim.plugin.close-buffers").config()

    -- mason.nvim
    require("yvim.plugin.mason").config()

    -- mini.nvim
    require("yvim.plugin.mini").config()

    -- null-ls.nvim
    require("yvim.plugin.null-ls").config()

    -- nvim-web-devicons
    require("yvim.plugin.web-devicons").config()

    -- project.nvim
    require("yvim.plugin.project").config()

    -- stickybuf.nvim
    require("yvim.plugin.stickybuf").config()
end

return M
