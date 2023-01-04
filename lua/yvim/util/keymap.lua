local Keymap = {}

local lazy = require("yvim.lazy")
local Logger = require("yvim.utils.logger")

local function get_leader_key(mode)
    return (mode ~= "i" and mode ~= "s") and "<Leader>" or yvim.alt_leader_key
end

Keymap.init = function()
    local augroup = vim.api.nvim_create_augroup("yvim_keymap", {})

    local keymap = {
        augroup = augroup,
        wk_queue = {},
    }
    setmetatable(keymap, { __index = Keymap })
    return keymap
end

function Keymap:__set(mappings, opts)
    if lazy.plugin_loaded("which-key.nvim") then
        require("which-key").register(mappings, opts)
    else
        table.insert(self.wk_queue, { mappings, opts })
    end
end

function Keymap:set(mode, mappings)
    self:__set(mappings, { mode = mode })
end

function Keymap:set_leader(mode, mappings)
    self:__set(mappings, { mode = mode, prefix = get_leader_key(mode) })
end

function Keymap:set_for_buf(buffer, mode, mappings)
    self:__set(mappings, { mode = mode, buffer = buffer })
end

function Keymap:set_buf_leader(buffer, mode, keymaps)
    self:__set(keymaps, {
        mode = mode,
        prefix = get_leader_key(mode),
        buffer = buffer,
    })
end

function Keymap:set_for_ft(ft, mode, keymaps)
    vim.api.nvim_create_autocmd("FileType", {
        group = self.augroup,
        pattern = ft,
        callback = function()
            self:set_for_buf(0, mode, keymaps)
        end,
    })
end

function Keymap:load()
    if not lazy.plugin_loaded("which-key.nvim") then
        Logger:error("which-key.nvim not loaded. Aborting.")
        return
    end

    local wk = require("which-key")

    for _, t in ipairs(self.wk_queue) do
        local mappings, opts = unpack(t)
        wk.register(mappings, opts)
    end

    self.wk_queue = {}
end

return Keymap.init()
