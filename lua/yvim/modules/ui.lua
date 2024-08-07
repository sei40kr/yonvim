local buffer_util = require("yvim.utils.buffer")
local window_util = require("yvim.utils.window")
local yonvim_config = require("yvim.config").get()

return {
    {
        "alpha-nvim",
        dependencies = { "nvim-web-devicons" },
        event = "VimEnter",
        init = function()
            buffer_util.add_special_filetypes({ "alpha" })
            window_util.add_special_filetypes({ "alpha" })
        end,
        opts = function()
            return require("yvim.plugins.alpha-nvim").opts()
        end,
        main = "alpha",
    },

    {
        "bufferline.nvim",
        dependencies = { "nvim-web-devicons" },
        opts = {
            options = {
                close_command = function(bufnr)
                    require("yvim.utils.buffer").delete(bufnr, false)
                end,
                right_mouse_command = function(bufnr)
                    require("yvim.utils.buffer").delete(bufnr, false)
                end,
                buffer_close_icon = " ",
                modified_icon = " ⦁",
                indicator = {
                    style = "icon",
                    icon = "▎ ",
                },
                diagnostics = "nvim_lsp",
                diagnostics_indicator = nil,
                show_close_icon = false,
                separator_style = { "", "" },
                offsets = { { filetype = "neo-tree" } },
            },
        },
        main = "bufferline",
    },

    {
        "nvim-colorizer.lua",
        opts = function()
            local filetypes = vim.tbl_map(function(filetype)
                return "!" .. filetype
            end, buffer_util.get_special_filetypes())
            table.insert(filetypes, "*")

            return {
                filetypes = filetypes,
                user_default_options = {
                    mode = "virtualtext",
                    css = true,
                    tailwind = "lsp",
                    sass = { enable = true },
                },
            }
        end,
        main = "colorizer",
    },

    {
        "dressing.nvim",
        lazy = true,
        init = function()
            vim.ui.input = function(...)
                require("lazy").load({ plugins = { "dressing.nvim" } })
                return vim.ui.input(...)
            end
            vim.ui.select = function(...)
                require("lazy").load({ plugins = { "dressing.nvim" } })
                return vim.ui.select(...)
            end
        end,
        opts = {
            input = {
                border = yonvim_config.ui.border,
                relative = "editor",
            },
            select = {
                nui = {
                    border = { style = yonvim_config.ui.border },
                },
            },
        },
    },

    {
        "flash.nvim",
        event = "VeryLazy",
        opts = {
            incremental = true,
            modes = {
                search = { enabled = false },
            },
        },
        main = "flash",
        keys = {
            {
                "<Leader>j",
                function()
                    require("flash").jump()
                end,
                desc = "Jump to",
            }
        },
    },

    {
        "gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "▍" },
                change = { text = "▍" },
                delete = { text = "▸" },
                topdelete = { text = "▸" },
                changedelete = { text = "▍" },
                untracked = { text = "▍" },
            },
            signs_staged_enable = false,
            attach_to_untracked = true,
            current_line_blame = true,
            on_attach = function(bufnr)
                local map = function(mode, lhs, rhs, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    opts.silent = opts.silent ~= false
                    vim.keymap.set(mode, lhs, rhs, opts)
                end

                map("n", "[c", "<Cmd>Gitsigns prev_hunk<CR>", { desc = "Jump to previous hunk" })
                map("n", "]c", "<Cmd>Gitsigns next_hunk<CR>", { desc = "Jump to next hunk" })
                map("n", "<Leader>g[", "[d", { remap = true, desc = "Jump to previous hunk" })
                map("n", "<Leader>g]", "]d", { remap = true, desc = "Jump to next hunk" })
                map({ "n", "x" }, "<Leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Revert hunk" })
                map("n", "<Leader>gR", "<Cmd>Gitsigns reset_buffer<CR>", { desc = "Revert file" })
                map({ "n", "x" }, "<Leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Git stage hunk" })
                map("n", "<Leader>gS", "<Cmd>Gitsigns stage_buffer<CR>", { desc = "Git stage file" })
                map("n", "<Leader>gU", "<Cmd>Gitsigns reset_buffer_index<CR>", { desc = "Git unstage file" })
            end,
        },
        main = "gitsigns",
    },

    {
        "vim-illuminate",
        lazy = false,
        opts = {
            providers = { "lsp", "treesitter" },
            filetypes_denylist = buffer_util.get_special_filetypes(),
        },
        config = function(_, opts)
            require("illuminate").configure(opts)
        end,
    },

    {
        "indent-blankline.nvim",
        dependencies = { "rainbow-delimiters.nvim" },
        opts = {
            indent = { char = '▏' },
            whitespace = { remove_blankline_trail = false },
            scope = {
                show_start = false,
                show_end = false,
                -- Use the same colors as rainbow-delimiters.nvim
                highlight = {
                    "RainbowDelimiterRed",
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterBlue",
                    "RainbowDelimiterOrange",
                    "RainbowDelimiterGreen",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterCyan",
                },
            },
            exclude = {
                filetypes = buffer_util.get_special_filetypes(),
                buftypes = buffer_util.special_buftypes,
            },
        },
        config = function(_, opts)
            require("ibl").setup(opts)

            -- Integrate with rainbow-delimiters.nvim
            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
        end,
        event = { "BufNewFile", "BufReadPost" },
        keys = {
            { "<Leader>ti", "<Cmd>IBLToggle<CR>", desc = "Indent guides" },
        },
    },

    {
        "lualine.nvim",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugins.lualine-nvim").config()
        end,
    },

    {
        "mini.trailspace",
        lazy = false,
        opts = {},
        main = "mini.trailspace",
        keys = {
            {
                "<Leader>cw",
                function()
                    ---@diagnostic disable-next-line: undefined-global
                    MiniTrailspace.trim()
                end,
                desc = "Delete trailing whitespace",
            },
            {
                "<Leader>cW",
                function()
                    ---@diagnostic disable-next-line: undefined-global
                    MiniTrailspace.trim_last_lines()
                end,
                desc = "Delete trailing newlines",
            },
        },
    },

    {
        "noice.nvim",
        dependencies = { "nvim-notify", "nui.nvim" },
        config = function()
            require("yvim.plugins.noice-nvim").config()
        end,
    },

    {
        "nvim-navic",
        init = function()
            require("yvim.utils.lsp").on_attach(function(client, bufnr)
                if client.server_capabilities.documentSymbolProvider then
                    require("nvim-navic").attach(client, bufnr)
                end
            end)
        end,
        opts = function()
            return {
                -- Add a space after each icon
                icons = vim.tbl_map(function(icon)
                    return icon .. " "
                end, yonvim_config.icons.kinds),
                highlight = true,
                separator = "  ",
                depth_limit = 5,
            }
        end,
        main = "nvim-navic",
        module = "nvim-navic",
    },

    {
        "nvim-notify",
        init = function()
            buffer_util.add_special_filetypes({ "notify" })
            window_util.add_special_filetypes({ "notify" })
        end,
        config = function()
            require("yvim.plugins.nvim-notify").config()
        end,
    },

    {
        "nui.nvim",
        lazy = true,
    },

    {
        "rainbow-delimiters.nvim",
        event = { "BufNewFile", "BufReadPost" },
    },

    {
        "virt-column.nvim",
        lazy = false,
        opts = {
            char = "│",
            exclude = {
                filetypes = buffer_util.get_special_filetypes(),
                buftypes = buffer_util.special_buftypes,
            },
        },
        main = "virt-column",
        keys = {
            {
                "<Leader>tc",
                function()
                    local virt_column = require("virt-column")
                    -- HACK: virt-column.nvim does not redraw the fill colum
                    --  indicator immediately, so I force virt-column.nvim to
                    --  re-initialize it.
                    virt_column.initialized = false
                    if require("virt-column.config").config.enabled then
                        virt_column.update({ enabled = false })
                    else
                        virt_column.update({ enabled = true })
                    end
                end,
                desc = "Fill column indicator"
            },
        },
    },

    {
        "nvim-web-devicons",
        config = function()
            require("yvim.plugins.nvim-web-devicons").config()
        end,
        module = "nvim-web-devicons",
    },

    {
        "zen-mode.nvim",
        opts = {
            window = { backdrop = 1.0 },
        },
        cmd  = "ZenMode",
        keys = {
            { "<Leader>tz", "<Cmd>ZenMode<CR>", desc = "Zen mode" },
        },
    },
}
