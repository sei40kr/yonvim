local M = {}

function M.setup()
    -- mini.nvim
    vim.g.minicompletion_disable = true
    vim.g.minicursorword_disable = true
    vim.g.minipairs_disable = true
    vim.g.minisessions_disable = true
    vim.g.ministarter_disable = true
    vim.g.ministatusline_disable = true
    vim.g.minitabline_disable = true
    vim.g.minitrailspace_disable = true

    -- vim-visual-multi
    vim.g.VM_default_mappings = 0
end

function M.config()
    -- hop.nvim
    require("hop").setup({})

    -- mini.nvim
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

    -- nvim-autopairs
    require("nvim-autopairs").setup({
        check_ts = true,
        map_c_h = true,
        map_c_w = true,
    })

    -- vim-visual-multi
    vim.api.nvim_set_keymap("n", "<C-n>", "<Plug>(VM-Find-Under)", {})
    vim.api.nvim_set_keymap("n", "<C-Down>", "<Plug>(VM-Add-Cursor-Down)", {})
    vim.api.nvim_set_keymap("n", "<C-Up>", "<Plug>(VM-Add-Cursor-Up)", {})
    vim.api.nvim_set_keymap("n", "<S-Right>", "<Plug>(VM-Select-l)", {})
    vim.api.nvim_set_keymap("n", "<S-Left>", "<Plug>(VM-Select-h)", {})
    vim.api.nvim_set_keymap("n", "<Leader>A", "<Plug>(VM-Select-All)", {})
    vim.api.nvim_set_keymap(
        "n",
        "<Leader>/",
        "<Plug>(VM-Start-Regex-Search)",
        {}
    )
    vim.api.nvim_set_keymap(
        "n",
        "<Leader>\\",
        "<Plug>(VM-Add-Cursor-At-Pos)",
        {}
    )
    vim.api.nvim_set_keymap("x", "<C-n>", "<Plug>(VM-Find-Subword-Under)", {})
    vim.api.nvim_set_keymap("x", "<Leader>a", "<Plug>(VM-Visual-Add)", {})
    vim.api.nvim_set_keymap("x", "<Leader>f", "<Plug>(VM-Visual-Find)", {})
    vim.api.nvim_set_keymap("x", "<Leader>c", "<Plug>(VM-Visual-Cursors)", {})
    vim.api.nvim_set_keymap("n", "<C-LeftMouse>", "<Plug>(VM-Mouse-Cursor)", {})
    vim.api.nvim_set_keymap("n", "<C-RightMouse>", "<Plug>(VM-Mouse-Word)", {})
    vim.api.nvim_set_keymap(
        "n",
        "<M-C-RightMouse>",
        "<Plug>(VM-Mouse-Column)",
        {}
    )
end

return M
