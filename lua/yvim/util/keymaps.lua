local Keymaps = {}

local function get_leader_key(mode)
    return (mode ~= "i" and mode ~= "s") and "<Leader>" or yvim.alt_leader_key
end

Keymaps.init = function()
    local augroup = vim.api.nvim_create_augroup("yvim_keymaps", {})

    local keymaps = {
        augroup = augroup,
        mapping_queue = {},
    }
    setmetatable(keymaps, { __index = Keymaps })
    return keymaps
end

function Keymaps:__set_internal(mappings, opts)
    local packer = require("yvim.packer")

    if packer.plugin_loaded("which-key.nvim") then
        require("which-key").register(mappings, opts)
    else
        table.insert(self.mapping_queue, { mappings, opts })
    end
end

function Keymaps:set(mode, mappings)
    self:__set_internal(mappings, { mode = mode })
end

function Keymaps:set_leader(mode, mappings)
    self:__set_internal(
        mappings,
        { mode = mode, prefix = get_leader_key(mode) }
    )
end

function Keymaps:set_for_buffer(buffer, mode, mappings)
    self:__set_internal(mappings, { mode = mode, buffer = buffer })
end

function Keymaps:set_leader_for_buffer(buffer, mode, keymaps)
    self:__set_internal(
        keymaps,
        { mode = mode, prefix = get_leader_key(mode), buffer = buffer }
    )
end

function Keymaps:load()
    local wk = require("which-key")
    local log = require("yvim.utils.log")

    if
        not packer_plugins["which-key.nvim"]
        or not packer_plugins["which-key.nvim"].loaded
    then
        log.warn("which-key.nvim not loaded. Aborting.")
        return
    end

    for _, t in ipairs(self.mapping_queue) do
        local mappings, opts = unpack(t)

        wk.register(mappings, opts)
    end

    self.mapping_queue = {}
end

function Keymaps:set_for_filetype(filetype, mode, keymaps)
    vim.api.nvim_create_autocmd("FileType", {
        group = self.augroup,
        pattern = filetype,
        callback = function()
            self:set_for_buffer(0, mode, keymaps)
        end,
    })
end

return Keymaps.init()
