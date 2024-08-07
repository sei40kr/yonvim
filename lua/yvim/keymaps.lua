local M = {}

function M.load()
    local plugin_util = require("yvim.utils.plugin")
    local config = require("yvim.config").get()

    local function map(mode, lhs, rhs, opts)
        opts = opts or {}
        opts.silent = opts.silent ~= false
        vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Disable Ex mode
    map("n", "Q", "<Nop>")

    -- Escape sequence
    map("i", "jk", "<Esc>")
    map("t", "jk", "<C-\\><C-n>")

    -- Clear search highlight
    map("n", "<Esc>", "<Cmd>nohls<CR>", { remap = true })

    map("n", "[<Space>", function()
        local lines = {}

        for _ = 1, vim.v.count1 do
            table.insert(lines, "")
        end

        vim.api.nvim_put(lines, "l", false, true)
    end, { desc = "Insert newline above" })
    map("n", "]<Space>", function()
        local pos = vim.api.nvim_win_get_cursor(0)
        local lines = {}

        for _ = 1, vim.v.count1 do
            table.insert(lines, "")
        end

        vim.api.nvim_put(lines, "l", true, false)
        vim.api.nvim_win_set_cursor(0, pos)
    end, { desc = "Insert newline below" })

    -- +buffer

    map("n", "[b", "<Cmd>bp<CR>", { desc = "Previous buffer" })
    map("n", "]b", "<Cmd>bn<CR>", { desc = "Next buffer" })
    map("n", "<Leader>bd", function()
        require("yvim.commands.buffer").delete_current_buffer()
    end, { desc = "Delete buffer" })
    map("n", "<Leader>bk", "<Leader>bd", {
        desc = "Delete buffer",
        remap = true,
    })
    map("n", "<Leader>bN", "<Cmd>ene<CR>", { desc = "New empty buffer" })
    map("n", "<Leader>bO", function()
        require("yvim.commands.buffer").delete_other_buffers()
    end, { desc = "Delete other buffers" })
    map("n", "<Leader>bs", "<Cmd>w<CR>", { desc = "Save buffer" })
    map("n", "<Leader>bS", "<Cmd>wa<CR>", { desc = "Save all buffers" })
    map("n", "<Leader>bz", function()
        require("yvim.commands.buffer").force_to_unload_current_buffer()
    end, { desc = "Unload buffer" })
    map("n", "<Leader>bZ", function()
        require("yvim.commands.buffer").wipeout_unloaded_buffers()
    end, { desc = "Wipe out unloaded buffers" })

    -- +code

    map("n", "gd", "<Leader>cd", { remap = true })
    map("n", "gi", "<Leader>ci", { remap = true })
    map("n", "gr", "<Leader>cD", { remap = true })
    map("n", "K", "<Leader>ck", { remap = true })

    map({ "n", "v" }, "<Leader>ca", function()
        require("yvim.commands.code").code_action()
    end, { desc = "Execute code action" })
    map("n", "<Leader>cd", function()
        require("yvim.commands.code").definition()
    end, { desc = "Goto definition" })
    map("n", "<Leader>cD", function()
        require("yvim.commands.code").references()
    end, { desc = "Jump to references" })
    map("n", "<Leader>cf", function()
        require("yvim.commands.code").format_buffer()
    end, { desc = "Format buffer" })
    map("v", "<Leader>cf", function()
        require("yvim.commands.code").format_range()
    end, { desc = "Format region" })
    map("n", "<Leader>ci", function()
        require("yvim.commands.code").implementation()
    end, { desc = "Find implementations" })
    map("n", "<Leader>cj", function()
        require("yvim.commands.code").workspace_symbol()
    end, { desc = "Jump to symbol in workspace" })
    map("n", "<Leader>ck", function()
        require("yvim.commands.code").hover()
    end, { desc = "Jump to documentation" })
    map("n", "<Leader>clFa", vim.lsp.buf.add_workspace_folder, { desc = "Add workspace folder" })
    map("n", "<Leader>clFr", vim.lsp.buf.remove_workspace_folder, { desc = "Remove workspace folder" })
    map("n", "<Leader>cr", function()
        require("yvim.commands.code").rename()
    end, { desc = "Rename" })
    map("n", "<Leader>ct", function()
        require("yvim.commands.code").type_definition()
    end, { desc = "Find type definition" })
    map("n", "<Leader>cy", function()
        require("yvim.commands.code").incoming_calls()
    end, { desc = "Incoming call hierarchy" })
    map("n", "<Leader>cY", function()
        require("yvim.commands.code").outgoing_calls()
    end, { desc = "Outgoing call hierarchy" })
    map("n", "<Leader>cx", function()
        require("yvim.commands.code").buffer_diagnostics()
    end, { desc = "List errors in buffer" })
    map("n", "<Leader>cX", function()
        require("yvim.commands.code").all_diagnostics()
    end, { desc = "List errors in workspace" })

    -- +file
    map("n", "<Leader>fs", "<Cmd>w<CR>", { desc = "Save file" })

    -- +help
    if plugin_util.has("noice.nvim") and plugin_util.has("telescope.nvim") then
        map("n", "<Leader>hn", function()
            require("noice").cmd("telescope")
        end, { desc = "Notifications" })
    end

    -- +quit
    map("n", "<Leader>qq", "<Cmd>qa<CR>", { desc = "Quit" })
    map("n", "<Leader>qQ", "<Cmd>qa!<CR>", { desc = "Quit without saving" })

    -- +tab
    map("n", "<Leader><Tab>0", "<Cmd>tabl<CR>", { desc = "Switch to final tab" })
    map("n", "<Leader><Tab>1", "<Cmd>1tabn<CR>", { desc = "Switch to 1st tab" })
    map("n", "<Leader><Tab>2", "<Cmd>2tabn<CR>", { desc = "Switch to 2nd tab" })
    map("n", "<Leader><Tab>3", "<Cmd>3tabn<CR>", { desc = "Switch to 3rd tab" })
    map("n", "<Leader><Tab>4", "<Cmd>4tabn<CR>", { desc = "Switch to 4th tab" })
    map("n", "<Leader><Tab>5", "<Cmd>5tabn<CR>", { desc = "Switch to 5th tab" })
    map("n", "<Leader><Tab>6", "<Cmd>6tabn<CR>", { desc = "Switch to 6th tab" })
    map("n", "<Leader><Tab>7", "<Cmd>7tabn<CR>", { desc = "Switch to 7th tab" })
    map("n", "<Leader><Tab>8", "<Cmd>8tabn<CR>", { desc = "Switch to 8th tab" })
    map("n", "<Leader><Tab>9", "<Cmd>9tabn<CR>", { desc = "Switch to 9th tab" })
    map("n", "<Leader><Tab>[", "<Cmd>tabp<CR>", { desc = "Previous tab" })
    map("n", "<Leader><Tab>]", "<Cmd>tabN<CR>", { desc = "Next tab" })
    map("n", "<Leader><Tab>`", "g<Tab>", { desc = "Switch to last tab" })
    map("n", "<Leader><Tab>d", "<Cmd>tabc<CR>", { desc = "Delete this tab" })
    map("n", "<Leader><Tab>n", "<Cmd>tabnew<CR>", { desc = "New tab" })

    -- +toggle

    local function toggle_options(options, name)
        return function()
            local message
            for _, option in ipairs(options) do
                vim.o[option] = not vim.o[option]
            end
            if vim.o[options[1]] then
                message = name .. " enabled"
            else
                message = name .. " disabled"
            end
            vim.notify(message, vim.log.levels.INFO)
        end
    end

    if plugin_util.has("gitsigns.nvim") then
        map("n", "<Leader>tB", "<Cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Git blame" })
    end

    map(
        "n",
        "<Leader>td",
        function()
            local enabled = vim.diagnostic.is_enabled()

            vim.diagnostic.enable(not enabled)

            if enabled then
                vim.notify("Diagnostics disabled", vim.log.levels.INFO)
            else
                vim.notify("Diagnostics enabled", vim.log.levels.INFO)
            end
        end,
        { desc = "Diagnostics" }
    )
    map("n", "<Leader>th", function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end, { desc = "LSP Inlay Hints" })
    map("n", "<Leader>tl", toggle_options({ "number", "relativenumber" }, "Line numbers"), { desc = "Line numbers" })
    map("n", "<Leader>tL", toggle_options({ "list" }, "List mode"), { desc = "List mode" })
    map(
        "n",
        "<Leader>tr",
        function()
            vim.bo.modifiable = not vim.bo.modifiable
        end,
        { desc = "Read-only mode" }
    )
    map("n", "<Leader>ts", toggle_options({ "spell" }, "Spell checker"), { desc = "Spell checker" })
    map("n", "<Leader>tw", toggle_options({ "wrap" }, "Soft line wrapping"), { desc = "Soft line wrapping" })

    -- +window
    map("n", "<Leader>w+", "<C-w>+", { desc = "Increase height" })
    map("n", "<Leader>w-", "<C-w>-", { desc = "Decrease height" })
    map("n", "<Leader>w<lt>", "<C-w><lt>", { desc = "Decrease width" })
    map("n", "<Leader>w=", "<C-w>=", { desc = "Equally high and wide" })
    map("n", "<Leader>w>", "<C-w>>", { desc = "Increase width" })
    map("n", "<Leader>w_", "<C-w>_", { desc = "Set height" })
    map("n", "<Leader>wb", "<C-w>b", { desc = "Go to the top-right window" })
    map("n", "<Leader>wc", "<C-w>q", { desc = "Quit a window" })
    map("n", "<Leader>wd", "<C-w>q", { desc = "Quit a window" })
    map("n", "<Leader>wh", "<C-w>h", { desc = "Go to the left window" })
    map("n", "<Leader>wj", "<C-w>j", { desc = "Go to the down window" })
    map("n", "<Leader>wk", "<C-w>k", { desc = "Go to the up window" })
    map("n", "<Leader>wl", "<C-w>l", { desc = "Go to the right window" })
    map("n", "<Leader>wq", "<C-w>q", { desc = "Quit a window" })
    map("n", "<Leader>wr", "<C-w>r", { desc = "Rotate upwards/rightwards" })
    map("n", "<Leader>wR", "<C-w>R", { desc = "Rotate downwards/leftwards" })
    map("n", "<Leader>ws", "<C-w>s", { desc = "Split window" })
    map("n", "<Leader>wt", "<C-w>t", { desc = "Go to the top-left window" })
    map("n", "<Leader>wT", "<C-w>T", { desc = "Break out into a new tab" })
    map("n", "<Leader>wv", "<C-w>v", { desc = "Split window vertically" })
    map("n", "<Leader>ww", "<C-w>w", { desc = "Next window" })
    map("n", "<Leader>wW", "<C-w>W", { desc = "Previous window" })

    -- Load user-defined keymaps
    for _, keymap in ipairs(config.keymaps) do
        local opts = {
            silent = keymap.silent ~= false,
            remap = keymap.remap,
            nowait = keymap.nowait,
            desc = keymap.desc,
        }
        map(keymap.mode or "n", keymap[1], keymap[2], opts)
    end
end

return M
