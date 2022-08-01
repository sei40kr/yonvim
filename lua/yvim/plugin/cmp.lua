local M = {}

local function cr(fallback)
    local cmp = require("cmp")
    local selected_entry = cmp.get_selected_entry()

    if cmp.visible() and selected_entry then
        cmp.confirm()
        return
    end

    fallback()
end

function M.config()
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
            completion = yvim.completion.show_menu_border
                    and cmp.config.window.bordered({ border = yvim.ui.border })
                or nil,
            documentation = yvim.completion.show_documentation_borders
                    and cmp.config.window.bordered({ border = yvim.ui.border })
                or nil,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item()),
            ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item()),
            ["<CR>"] = cr,
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
end

return M
