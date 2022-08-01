local M = {}

function M.setup()
    -- mini.nvim
    vim.g.minibufremove_disable = true
    vim.g.minicompletion_disable = true
    vim.g.minicursorword_disable = true
    vim.g.minipairs_disable = true
    vim.g.minisessions_disable = true
    vim.g.ministarter_disable = true
    vim.g.ministatusline_disable = true
    vim.g.minitabline_disable = true
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

    -- vim-visual-multi
    vim.g.VM_default_mappings = 0
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

function M.config()
    -- hop.nvim
    require("yvim.plugin.hop").config()

    -- mini.nvim
    require("yvim.plugin.mini").config()

    -- nvim-autopairs
    require("yvim.plugin.autopairs").config()
end

return M
