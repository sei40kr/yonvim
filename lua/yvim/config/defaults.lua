return {
    leader = " ",
    localleader = ",",

    null_ls = { sources = {} },

    completion = {
        show_menu_border = false,
        copilot = { enable = true },
    },

    lsp = {
        servers = {},
    },

    snippet = {
        friendly_snippets = { enable = true },
        user_snippet_dirs = {},
    },

    format = { format_on_save = true },

    project = { base_dirs = { { "~/ghq", max_depth = 4 } } },

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
