return {
    leader = " ",
    localleader = ",",

    core = {
        project_base_dirs = { { "~/ghq", max_depth = 4 } },
    },

    completion = {
        show_completion_borders = false,
        show_documentation_borders = true,
        copilot = { enable = true },
    },

    lsp = {
        servers = {},
    },

    snippet = {
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
