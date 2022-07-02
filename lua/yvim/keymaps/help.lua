local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        h = {
            name = "+help",
            a = {
                function() require("telescope.builtin").autocommands() end,
                "autocommands",
            },
            f = {
                function() require("telescope.builtin").filetypes() end,
                "filetypes",
            },
            h = {
                function() require("telescope.builtin").help_tags() end,
                "help tags",
            },
            H = {
                function() require("telescope.builtin").highlights() end,
                "highlights",
            },
            k = {
                function() require("telescope.builtin").keymaps() end,
                "keymaps",
            },
            m = {
                function() require("telescope.builtin").man_pages() end,
                "man pages",
            },
            o = {
                function() require("telescope.builtin").vim_options() end,
                "vim options",
            },
        },
    })
end

return M
