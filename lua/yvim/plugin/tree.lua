local M = {}

function M.setup()
    require("yvim.util.special_buffer").register_filetype("NvimTree")
end

function M.config()
    local special_buffer = require("yvim.util.special_buffer")

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
        update_cwd = true,
        view = {
            width = 35,
            mappings = {
                custom_only = false,
                -- TODO Add custom keymaps
                list = {},
            },
            signcolumn = "no",
        },
        filters = { custom = { "^\\.git$" } },
        actions = {
            change_dir = { restrict_above_cwd = true },
            open_file = {
                window_picker = {
                    exclude = {
                        filetype = special_buffer.get_filetypes(),
                        buftype = special_buffer.get_buftypes(),
                    },
                },
            },
            remove_file = { close_window = false },
        },
    })
end

return M
