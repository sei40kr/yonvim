local M = {}

function M.open_repl()
    require("iron.core").repl_for(vim.bo.filetype)
end

function M.open_repl_in_same_win()
    require("iron.core").repl_here(vim.bo.filetype)
end

function M.send_visual_to_repl()
    require("iron.core").visual_send()
end

return M
