local z = require("yvim.ui.zindex")
local buffer_util = require("yvim.utils.buffer")
local window_util = require("yvim.utils.window")
local yonvim_config = require("yvim.config").get()

return {
    {
        "copilot.lua",
        enabled = yonvim_config.copilot.completion.enable,
        opts = {
            panel = { enabled = false },
            suggestion = { enabled = false },
            filetypes = yonvim_config.copilot.completion.filetypes,
        },
        main = "copilot",
        cmd = "Copilot",
    },
    {
        "CopilotChat.nvim",
        enabled = yonvim_config.copilot.chat.enable,
        init = function()
            buffer_util.add_special_filetypes({ "copilot-chat" })
            window_util.add_special_filetypes({ "copilot-chat" })
        end,
        opts = {
            model = yonvim_config.copilot.chat.model,
            temperature = yonvim_config.copilot.chat.temperature,

            question_header = "## You ",
            answer_header = "## Copilot ",
            error_header = "## Error ",
            separator = "---",

            show_folds = false,

            history_path = vim.fn.stdpath("data") .. "/copilot-chat",

            window = {
                layout = "float",
                border = yonvim_config.ui.border,
                title = "   Copilot Chat ",
                zindex = z.COPILOT_CHAT,
            },
        },
        keys = {
            {
                "<Leader>ad",
                "<Cmd>CopilotChatDocs<CR>",
                mode = { "n", "v" },
                desc = "Write docs",
            },
            {
                "<Leader>ae",
                "<Cmd>CopilotChatExplain<CR>",
                mode = { "n", "v" },
                desc = "Explain",
            },
            {
                "<Leader>af",
                "<Cmd>CopilotChatFix<CR>",
                mode = { "n", "v" },
                desc = "Fix",
            },
            {
                "<Leader>ao",
                "<Cmd>CopilotChatOptimize<CR>",
                mode = { "n", "v" },
                desc = "Optimize",
            },
            {
                "<Leader>at",
                "<Cmd>CopilotChatTests<CR>",
                mode = { "n", "v" },
                desc = "Generate tests",
            },
        },
    },
    {
        "nvim-cmp",
        dependencies = {
            {
                "copilot-cmp",
                lazy = true,
                enabled = yonvim_config.copilot.completion.enable,
                dependencies = { "copilot.lua" },
                config = true,
            },
        },
    }
}
