local M = {}

function M.setup()
    vim.g.miniai_disable = true
    vim.g.minialign_disable = true
    vim.g.minianimate_disable = true
    vim.g.minibracketed_disable = true
    vim.g.minicompletion_disable = true
    vim.g.minicursorword_disable = true
    vim.g.minidoc_disable = true
    vim.g.miniindentscope_disable = true
    vim.g.minijump2d_disable = true
    vim.g.minimap_disable = true
    vim.g.minimove_disable = true
    vim.g.minipairs_disable = true
    vim.g.minisessions_disable = true
    vim.g.minisplitjoin_disable = true
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
    require("mini.bufremove").setup({})
    require("mini.comment").setup({})
    require("mini.jump").setup({})
    require("mini.surround").setup({
        mappings = {
            add = "",
            delete = "ds",
            find = "",
            find_left = "",
            highlight = "",
            replace = "cs",
        },
    })
end

return M
