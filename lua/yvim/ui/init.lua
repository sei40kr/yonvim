local M = {}

function M.setup()
    -- tokyonight.nvim
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_italic_keywords = false
    vim.g.tokyonight_lualine_bold = true
end

function M.config()
    -- bufferline.nvim
    require("bufferline").setup({
        options = {
            indicator_icon = "▍ ",
            buffer_close_icon = "  ",
            modified_icon = " ● ",
            offsets = { { filetype = "NvimTree" } },
            separator_style = { "", "" },
        },
    })

    -- diffview.nvim
    local cb = require("diffview.config").diffview_callback
    require("diffview").setup({
        icons = {
            folder_closed = " ",
            folder_open = " ",
        },
        file_panel = { listing_style = "list" },
        key_bindings = {
            view = { q = cb("close") },
            file_panel = { q = cb("close") },
            file_history_panel = { q = cb("close") },
        },
    })

    -- dressing.nvim
    require("dressing").setup({
        input = {
            default_prompt = "Input",
            prompt_align = "center",
            relative = "editor",
            winblend = 0,
        },
        select = { backend = { "telescope" } },
    })

    -- gitsigns.nvim
    require("gitsigns").setup({
        signs = {
            add = {
                hl = "GitSignsAdd",
                text = "▍",
                numhl = "GitSignsAddNr",
                linehl = "GitSignsAddLn",
            },
            change = {
                hl = "GitSignsChange",
                text = "▍",
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
                text = "▍",
                numhl = "GitSignsChangeNr",
                linehl = "GitSignsChangeLn",
            },
        },
        keymaps = {},
    })

    -- indent-blankline.nvim
    require("indent_blankline").setup({ show_first_indent_level = false })

    -- lualine.nvim
    require("lualine").setup({
        options = {
            section_separators = "",
            component_separators = "",
            disabled_filetypes = { "NvimTree" },
        },
        sections = {
            lualine_b = {
                "branch",
                {
                    "diagnostics",
                    symbols = {
                        error = " ",
                        warn = " ",
                        info = " ",
                        hint = " ",
                    },
                },
            },
        },
    })

    -- nvim-tree.lua
    require("nvim-tree").setup({
        renderer = {
            highlight_git = true,
            icons = {
                glyphs = {
                    default = " ",
                    symlink = " ",
                    folder = {
                        default = " ",
                        open = " ",
                        empty = " ",
                        empty_open = " ",
                        symlink = " ",
                        symlink_open = " ",
                    },
                },
                show = {
                    git = false,
                    folder = true,
                    file = true,
                    folder_arrow = true,
                },
            },
            special_files = {},
        },
        respect_buf_cwd = true,
        update_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
        view = {
            width = 35,
            mappings = {
                custom_only = false,
                -- TODO Add custom keymaps
                list = {},
            },
            signcolumn = "no",
        },
    })

    -- telescope.nvim
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ["<C-k>"] = actions.move_selection_previous,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<Esc>"] = actions.close,
                    jk = actions.close,
                },
            },
        },
        extensions = {
            project = {
                base_dirs = { { "~/ghq", max_depth = 4 } },
            },
        },
    })
    telescope.load_extension("luasnip")
    -- FIXME these extensions cause an error while generating rplugin.vim
    -- telescope.load_extension("fzy_native")
    -- telescope.load_extension("project")

    -- trouble.nvim
    require("trouble").setup({
        indent_lines = false,
        auto_jump = {
            "lsp_definitions",
            "lsp_implementations",
            "lsp_references",
        },
        use_diagnostic_signs = true,
    })

    -- which-key.nvim
    require("which-key").setup({
        key_labels = {
            ["<space>"] = "SPC",
            ["<cr>"] = "RET",
            ["<tab>"] = "TAB",
        },
        icons = {
            breadcrumb = "",
            separator = "",
        },
    })

    -- todo-comments.nvim
    require("todo-comments").setup({
        signs = false,
        keywords = {
            PERF = { icon = "  ", alt = { "OPTIMIZE" } },
            NOTE = { icon = "  ", color = "hint" },
            REVIEW = { icon = "  ", color = "info" },
            TODO = { icon = "  ", color = "info" },
            HACK = { icon = "  ", color = "warning" },
            XXX = { icon = "  ", color = "warning" },
            FIXME = { icon = "  ", color = "error" },
        },
        highlight = {
            before = "",
            keyword = "bg",
            after = "",
        },
    })

    -- tokyonight.nvim
    vim.cmd([[colorscheme tokyonight]])
end

return M
