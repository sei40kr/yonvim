local M = {}

function M.setup()
    vim.keymap.set("i", "<Tab>", function()
        require("yvim.api.completion").tab_complete()
    end)
    vim.keymap.set("i", "<S-Tab>", function()
        require("yvim.api.completion").s_tab_complete()
    end)

    vim.keymap.set("i", "<C-x><C-f>", function()
        require("yvim.api.completion").complete_path()
    end)
    vim.keymap.set("i", "<C-x><C-k>", function()
        require("yvim.api.completion").complete_buffer()
    end)
    vim.keymap.set("i", "<C-x><C-o>", function()
        require("yvim.api.completion").complete_omni()
    end)
    vim.keymap.set("i", "<C-x>s", function()
        require("yvim.api.completion").complete_spell()
    end)
end

return M
