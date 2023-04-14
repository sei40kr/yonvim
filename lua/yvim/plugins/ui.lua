return {
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
        dir = "@gitsigns@",
        opts = {
            signs = {
                add = {
                    hl = "GitSignsAdd",
                    text = "▎",
                    numhl = "GitSignsAddNr",
                    linehl = "GitSignsAddLn",
                },
                change = {
                    hl = "GitSignsChange",
                    text = "▎",
                    numhl = "GitSignsChangeNr",
                    linehl = "GitSignsChangeLn",
                },
                delete = {
                    hl = "GitSignsDelete",
                    text = "▸",
                    numhl = "GitSignsDeleteNr",
                    linehl = "GitSignsDeleteLn",
                },
                topdelete = {
                    hl = "GitSignsDelete",
                    text = "▸",
                    numhl = "GitSignsDeleteNr",
                    linehl = "GitSignsDeleteLn",
                },
                changedelete = {
                    hl = "GitSignsChange",
                    text = "▎",
                    numhl = "GitSignsChangeNr",
                    linehl = "GitSignsChangeLn",
                },
            },
            keymaps = {},
        },
        main = "gitsigns",
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
        main = "mini.indentscope",
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
        opts = {
            highlight = true,
            separator = " ",
            depth_limit = 5,
        },
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
