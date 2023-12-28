local M = {}

function M.init()
    vim.g.VM_set_statusline = 3
    vim.g.VM_silent_exit = 1
    vim.g.VM_show_warnings = 0
    vim.g.VM_skip_shorter_lines = 0
    vim.g.VM_exit_on_1_cursor_left = 1
    vim.g.VM_insert_special_keys = {}

    vim.g.VM_maps = { ["Skip Region"] = "<C-t>" }
    vim.g.VM_default_mappings = 0

    vim.keymap.set("n", "<C-n>", "<Plug>(VM-Find-Under)", { remap = true })
    vim.keymap.set("n", "<C-Up>", "<Plug>(VM-Add-Cursor-Up)", { remap = true })
    vim.keymap.set("n", "<C-Down>", "<Plug>(VM-Add-Cursor-Down)", { remap = true })
    vim.keymap.set("x", "<C-n>", function()
        if vim.api.nvim_get_mode().mode == "v" then
            return "<Plug>(VM-Find-Subword-Under)"
        end
        return "<C-n>"
    end, { expr = true, remap = true })
end

return M
