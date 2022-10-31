return {
    -- The leader prefix key
    leader_key = " ",
    -- The alternative leader prefix key. Used for insert and select modes.
    alt_leader_key = "<M-Space>",
    -- The local leader key
    localleader_key = ",",

    -- null-ls.nvim sources to use
    null_ls = {
        sources = function(_)
            return {}
        end,
    },

    completion = {
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

    repl = {
        -- The REPL handlers to use. See `:help iron-customizing`.
        --
        -- Example:
        --  yvim.repl.handlers = {
        --    sh = { command = { "zsh" } },
        --  }
        handlers = { },
        -- The command to open the REPL window. See `:help opening-window`.
        win_open_cmd = "botright 15 split",
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
