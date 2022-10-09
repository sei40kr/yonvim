local M = {}

function M.config()
    require("iron.core").setup({
        config = {
            scratch_repl = true,
            repl_definition = yvim.repl.handlers,
            should_map_plug = false,
            repl_open_cmd = yvim.repl.win_open_cmd,
        },
        keymaps = {
            send_motion = "<Nop>",
            visual_send = "<Nop>",
            send_file = "<Nop>",
            send_line = "<Nop>",
            send_mark = "<Nop>",
            mark_motion = "<Nop>",
            mark_visual = "<Nop>",
            remove_mark = "<Nop>",
            cr = "<Nop>",
            interrupt = "<Nop>",
            exit = "<Nop>",
            clear = "<Nop>",
        },
        highlight = { italic = false },
    })
end

return M
