local config_opts = require("yvim.config").opts

return {
    {
        dir = "@alpha@",
        dependencies = { "nvim-web-devicons" },
        event = "VimEnter",
        opts = function()
            local green = vim.g.terminal_color_2
            local blue = vim.g.terminal_color_4
            local gray = vim.api.nvim_get_hl(0, { name = "Comment" }).fg

            vim.api.nvim_set_hl(0, "YonvimDashboardLogo1", { fg = blue })
            vim.api.nvim_set_hl(0, "YonvimDashboardLogo2", { fg = green })
            vim.api.nvim_set_hl(0, "YonvimDashboardLogo3", { fg = green, bg = blue })
            vim.api.nvim_set_hl(0, "YonvimDashboardLogo4", { fg = gray })

            local dashboard = require 'alpha.themes.dashboard'

            dashboard.section.header.val = {
                [[            ]],
                [[     ██     ]],
                [[      █      ]],
                [[       ██       ]],
                [[              ]],
                [[]],
                [[Y  O  N  V  I  M]],
            }
            dashboard.section.header.opts.hl = {
                { { "YonvimDashboardLogo1", 6, 11 }, { "YonvimDashboardLogo2", 14, 19 } },
                { { "YonvimDashboardLogo1", 6, 14 }, { "YonvimDashboardLogo2", 15, 23 } },
                { { "YonvimDashboardLogo1", 7, 9 },  { "YonvimDashboardLogo3", 10, 12 }, { "YonvimDashboardLogo2", 13, 18 } },
                { { "YonvimDashboardLogo2", 8, 13 } },
                { { "YonvimDashboardLogo2", 8, 13 } },
                {},
                { { "YonvimDashboardLogo4", 0, 16 } },
            }
            dashboard.section.buttons.val = {}

            return dashboard.config
        end,
        main = "alpha",
    },

    {
        dir = "@bufferline@",
        dependencies = { "nvim-web-devicons" },
        opts = {
            options = {
                close_command = 'lua require("yvim.buffer").del_buf()',
                right_mouse_command = 'lua require("yvim.buffer").del_buf()',
                buffer_close_icon = "  ",
                modified_icon = "• ",
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
        dir = "@colorizer@",
        opts = {
            filetypes = {
                "*",
                "!alpha",
            },
            user_default_options = {
                mode = "virtualtext",
                css = true,
                tailwind = "lsp",
                sass = { enable = true },
            },
        },
        main = "colorizer",
    },

    {
        dir = "@dressing@",
        name = "dressing.nvim",
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
            input = { border = config_opts.ui.border },
            select = {
                nui = {
                    border = { style = config_opts.ui.border },
                },
            },
        },
    },

    {
        dir = "@flash@",
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
        dir = "@gitsigns@",
        name = "gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "▍" },
                change = { text = "▍" },
                delete = { text = "▸" },
                topdelete = { text = "▸" },
                changedelete = { text = "▍" },
                untracked = { text = "▍" },
            },
            current_line_blame = true,
            on_attach = function(bufnr)
                local map = function(mode, lhs, rhs, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    opts.silent = opts.silent ~= false
                    vim.keymap.set(mode, lhs, rhs, opts)
                end

                map("n", "[d", "<Cmd>Gitsigns prev_hunk<CR>", { desc = "Jump to previous hunk" })
                map("n", "]d", "<Cmd>Gitsigns next_hunk<CR>", { desc = "Jump to next hunk" })
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
        dir = "@illuminate@",
        lazy = false,
        opts = {
            providers = { "lsp", "treesitter" }
        },
        config = function(_, opts)
            require("illuminate").configure(opts)
        end,
    },

    {
        dir = "@indent_blankline@",
        lazy = false,
        opts = {
            indent = { char = '▏' },
            whitespace = { remove_blankline_trail = false },
            scope = { enabled = false },
        },
        config = function(_, opts)
            require("ibl").setup(opts)

            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
            hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
        end,
    },

    {
        dir = "@lualine@",
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.lualine").config()
        end,
    },

    {
        dir = "@mini_indentscope@",
        opts = function()
            return {
                draw = {
                    animation = require("mini.indentscope").gen_animation.none(),
                },
                mappings = {
                    object_scope = '',
                    object_scope_with_border = '',
                    goto_top = '',
                    goto_bottom = '',
                },
                symbol = '▏',
            }
        end,
        config = function(_, opts)
            local augroup = vim.api.nvim_create_augroup("yvim_indentscope", {})
            vim.api.nvim_create_autocmd("FileType", {
                group = augroup,
                pattern = "alpha",
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })

            require("mini.indentscope").setup(opts)
        end,
    },

    {
        dir = "@mini_trailspace@",
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
        dir = "@noice@",
        name = "noice.nvim",
        dependencies = { "nvim-notify", "nui.nvim" },
        config = function()
            require("yvim.plugin.noice").config()
        end,
    },

    {
        dir = "@navic@",
        name = "nvim-navic",
        init = function()
            local Util = require("yvim.util")
            Util.on_attach(function(client, bufnr)
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
                end, config_opts.icons.kinds),
                highlight = true,
                separator = "  ",
                depth_limit = 5,
            }
        end,
        main = "nvim-navic",
        module = "nvim-navic",
    },

    {
        dir = "@notify@",
        name = "nvim-notify",
        config = function()
            require("yvim.plugin.notify").config()
        end,
    },

    {
        dir = "@nui@",
        name = "nui.nvim",
        lazy = true,
    },

    {
        dir = "@virt_column@",
        opts = { char = "│" },
        main = "virt-column",
    },

    {
        dir = "@web_devicons@",
        name = "nvim-web-devicons",
        config = function()
            require("yvim.plugin.web-devicons").config()
        end,
        module = "nvim-web-devicons",
    },
}
