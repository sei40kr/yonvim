return {
    colorscheme = {
        -- The name of the colorscheme to use.
        -- Possible values: `tokyonight-night`, `tokyonight-storm`,
        -- `tokyonight-day`, `tokyonight-moon`
        name = "tokyonight-night",
        -- Whether to disable setting the background color.
        transparent = false,
    },

    -- The leader prefix key
    leader_key = " ",
    -- The alternative leader prefix key. Used for insert and select modes.
    alt_leader_key = "<M-Space>",
    -- The local leader key
    localleader_key = ",",

    -- none-ls.nvim sources to use
    null_ls = {
        sources = function(_)
            return {}
        end,
    },

    completion = {
        copilot = {
            -- Whether to enable GitHub Copilot suggestions
            enable = true,
            -- The filetypes to enable Copilot for
            filetypes = {
                help = true,
                markdown = true,
                yaml = true,
                sh = function()
                    return not vim.endswith(vim.api.nvim_buf_get_name(0), ".env")
                end,
            },
        },
    },

    format = {
        -- Whether to format the buffer upon saving
        format_on_save = true,
    },

    icons = {
        kinds = {
            Array = " ",
            Boolean = " ",
            Class = " ",
            Color = " ",
            Constant = " ",
            Constructor = " ",
            Copilot = " ",
            Enum = " ",
            EnumMember = " ",
            Event = " ",
            Field = " ",
            File = " ",
            Folder = " ",
            Function = " ",
            Interface = " ",
            Key = " ",
            Keyword = " ",
            Method = " ",
            Module = " ",
            Namespace = " ",
            Null = " ",
            Number = " ",
            Object = " ",
            Operator = " ",
            Package = " ",
            Property = " ",
            Reference = " ",
            Snippet = " ",
            String = " ",
            Struct = " ",
            Text = " ",
            TypeParameter = " ",
            Unit = " ",
            Value = " ",
            Variable = " ",
        },
    },

    lang = {
        typescript = {
            -- Whether to enable TypeScript supports
            enable = false,
        },
    },

    lsp = {
        -- LSP servers to use
        servers = {},
    },

    project = {
        -- Project base directories
        base_dirs = {},
    },

    repl = {
        -- The REPL handlers to use. See `:help iron-customizing`.
        --
        -- Example:
        --  yvim.repl.handlers = {
        --    sh = { command = { "zsh" } },
        --  }
        handlers = {},
    },

    snippet = {
        -- Whether to enable friendly-snippets
        friendly_snippets = { enable = true },
        -- User snippet directories
        user_snippet_dirs = {},
    },

    ui = {
        -- The default font
        font = {
            name = "monospace",
            size = 12,
            forcedly_assign = false,
        },
        -- The default border style
        border = "rounded",
        -- The default spinner pattern
        spinner = {
            "⠋",
            "⠙",
            "⠹",
            "⠸",
            "⠼",
            "⠴",
            "⠦",
            "⠧",
            "⠇",
            "⠏",
        },
    },

    keymaps = {
        n = {},
        v = {},
        s = {},
        x = {},
        o = {},
        i = {},
        c = {},
        t = {},
    },
}
