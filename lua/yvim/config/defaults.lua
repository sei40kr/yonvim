return {
    -- The leader key
    leader = " ",
    -- The local leader key
    localleader = ",",

    -- null-ls.nvim sources to use
    null_ls = { sources = {} },

    completion = {
        -- Whether to show border for completion popup menu
        show_menu_border = false,
        -- Whether to enable GitHub Copilot suggestions
        copilot = { enable = true },
    },

    format = {
        -- Whether to format the buffer upon saving
        format_on_save = true,
    },

    lsp = {
        -- LSP servers to use
        servers = {},
    },

    project = {
        -- Project base directories
        base_dirs = {},
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
}
