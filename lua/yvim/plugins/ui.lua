local config_opts = require("yvim.config").opts

return {
    {
        "alpha-nvim",
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons" },
        event = "VimEnter",
        opts = function()
            local dashboard = require 'alpha.themes.dashboard'

            local green = vim.g.terminal_color_2
            local blue = vim.g.terminal_color_4
            local gray = vim.api.nvim_get_hl(0, { name = "Comment" }).fg

            vim.api.nvim_set_hl(0, "YonvimDashboardLogo1", { fg = blue })
            vim.api.nvim_set_hl(0, "YonvimDashboardLogo2", { fg = green })
            vim.api.nvim_set_hl(0, "YonvimDashboardLogo3", { fg = green, bg = blue })

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
                {},
            }
            dashboard.section.buttons.val = {}

            local startup_time = nil
            local augroup = vim.api.nvim_create_augroup("yonvim_alpha", {})
            vim.api.nvim_create_autocmd("User", {
                group = augroup,
                pattern = "LazyVimStarted",
                callback = function()
                    startup_time = require("lazy").stats().startuptime
                    vim.cmd("AlphaRedraw")
                end,
            })

            vim.api.nvim_set_hl(0, "YonvimDashboardFooter", { fg = gray })

            dashboard.section.footer.val = function()
                if not startup_time then
                    return {}
                end
                return { string.format("Loaded in %.0fms", startup_time) }
            end
            dashboard.section.footer.opts.hl = { { { "YonvimDashboardFooter", 0, 15 } } }

            return dashboard.config
        end,
        main = "alpha",
    },

    {
        "bufferline.nvim",
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons" },
        opts = {
            options = {
                close_command = 'lua require("yvim.buffer").del_buf()',
                right_mouse_command = 'lua require("yvim.buffer").del_buf()',
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
        "dressing.nvim",
        lazy = true,
        cond = not vim.g.started_by_firenvim,
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
        cond = not vim.g.started_by_firenvim,
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
        "vim-illuminate",
        lazy = false,
        opts = {
            providers = { "lsp", "treesitter" }
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
        },
        config = function(_, opts)
            require("ibl").setup(opts)

            -- Integrate with rainbow-delimiters.nvim
            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
        end,
        event = { "BufNewFile", "BufReadPost" },
    },

    {
        "lualine.nvim",
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-web-devicons" },
        config = function()
            require("yvim.plugin.lualine").config()
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
        cond = not vim.g.started_by_firenvim,
        dependencies = { "nvim-notify", "nui.nvim" },
        config = function()
            require("yvim.plugin.noice").config()
        end,
    },

    {
        "nvim-navic",
        cond = not vim.g.started_by_firenvim,
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
        "nvim-notify",
        cond = not vim.g.started_by_firenvim,
        config = function()
            require("yvim.plugin.notify").config()
        end,
    },

    {
        "nui.nvim",
        cond = not vim.g.started_by_firenvim,
        lazy = true,
    },

    {
        "rainbow-delimiters.nvim",
        event = { "BufNewFile", "BufReadPost" },
    },

    {
        "virt-column.nvim",
        lazy = false,
        opts = { char = "│" },
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
            require("yvim.plugin.web-devicons").config()
        end,
        module = "nvim-web-devicons",
    },
}
