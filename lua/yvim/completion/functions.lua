local M = {}

local function check_backspace()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    local line = vim.api.nvim_get_current_line()

    return col == 0 or line:sub(col, col):find("%s") ~= nil
end

function M.tab_complete()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
    elseif cmp.visible() then
        cmp.select_next_item()
    elseif check_backspace() then
        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes("<Tab>", true, true, true),
            "n",
            true
        )
    end

    cmp.complete()
end

function M.s_tab_complete()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    elseif cmp.visible() then
        cmp.select_prev_item()
    end

    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<S-Tab>", true, true, true),
        "n",
        true
    )
end

function M.complete_buffer()
    require("cmp").complete({ config = { sources = { { name = "buffer" } } } })
end

function M.complete_omni()
    require("cmp").complete({ config = { sources = { { name = "omni" } } } })
end

function M.complete_path()
    require("cmp").complete({ config = { sources = { { name = "path" } } } })
end

function M.complete_spell()
    require("cmp").complete({ config = { sources = { { name = "spell" } } } })
end

function M.setup_cmp()
    local cmp = require("cmp")

    local sources = {
        { name = "luasnip" },
        { name = "nvim_lsp", group_index = 1 },
        { name = "nvim_lsp_signature_help", group_index = 1 },
        { name = "omni", group_index = 2 },
        { name = "path", group_index = 2 },
        { name = "buffer", group_index = 2 },
    }
    local comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        cmp.config.compare.locality,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
    }

    if yvim.completion.copilot.enable then
        table.insert(sources, 1, { name = "copilot" })

        local copilot_cmp_comparators = require("copilot_cmp.comparators")
        table.insert(comparators, 1, copilot_cmp_comparators.prioritize)
        table.insert(comparators, 2, copilot_cmp_comparators.score)
    end

    cmp.setup({
        window = {
            completion = yvim.completion.show_completion_borders
                    and cmp.config.window.bordered()
                or nil,
            documentation = yvim.completion.show_documentation_borders
                    and cmp.config.window.bordered()
                or nil,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item()),
            ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item()),
            ["<CR>"] = function(fallback)
                if cmp.visible() then
                    cmp.confirm()
                else
                    fallback()
                end
            end,
            ["<Down>"] = cmp.mapping(cmp.mapping.select_next_item()),
            ["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item()),
            ["<Tab>"] = cmp.config.disable,
            ["<S-Tab>"] = cmp.config.disable,
        }),
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },
        formatting = {
            format = function(entry, vim_item)
                if entry.source.name == "copilot" then
                    vim_item.kind = " Copilot"
                    vim_item.kind_hl_group = "CmpItemKindCopilot"
                    return vim_item
                end

                return require("lspkind").cmp_format()(entry, vim_item)
            end,
        },
        sources = cmp.config.sources(sources),
        sorting = {
            priority_weight = 2,
            comparators = comparators,
        },
    })

    cmp.setup.cmdline(":", {
        sources = cmp.config.sources(
            { { name = "path" } },
            { { name = "cmdline" } }
        ),
    })

    vim.schedule(function()
        require("copilot").setup()
    end)
end

return M
