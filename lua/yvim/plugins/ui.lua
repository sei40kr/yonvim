local config_opts = require("yvim.config").opts

return {
    {
        dir = "@alpha@",
        dependencies = { "nvim-web-devicons" },
        event = "VimEnter",
        opts = function()
            local dashboard = require 'alpha.themes.dashboard'

            dashboard.section.header.val = {
                [[                               __                ]],
                [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
                [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
                [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
                [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
                [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
            }
            dashboard.section.buttons.val = {
                -- TODO: Consider a situation where the user has a different
                --  leader key
                dashboard.button("SPC f r", "  Recently opened files"),
                dashboard.button("SPC p p", "  Open project"),
                dashboard.button("SPC f p", "  Open private configuration"),
            }

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
                offsets = { { filetype = "NvimTree" } },
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
                symbol = '╎',
            }
        end,
        config = function(_, opts)
            local augroup = vim.api.nvim_create_augroup("yvim_indentscope", {})
            vim.api.nvim_create_autocmd("FileType", {
                group = augroup,
                pattern = { "alpha", "NvimTree" },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })

            require("mini.indentscope").setup(opts)
        end,
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
