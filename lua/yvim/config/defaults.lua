return {
    leader = " ",
    localleader = ",",

    completion = {
        show_completion_borders = false,
        show_documentation_borders = true,
        copilot = { enable = true },
    },

    lsp = {
        servers = {},
    },

    snippets = {
        friendly_snippets = {
            enable = true,
        },
    },

    format = {
        format_on_save = true,
        formatters = {},
    },

    ui = {
        font = {
            name = "monospace",
            size = 12,
            forcedly_assign = false,
        },
        border = "rounded",
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
