return {
    "robitx/gp.nvim",
    config = function()
        local conf = {
            chat_confirm_delete = false,
            chat_prompt_buf_type = true,
            chat_conceal_model_params = false,
            chat_template = require("gp.defaults").short_chat_template,
            chat_shortcut_respond = { modes = { "n", "i", "v", "x" }, shortcut = "<S-CR>" },
            providers = {
                openai = {
                    disable = true,
                },
                copilot = {
                    disable = false,
                    secret = { "cat", "D:\\keys\\copilot_nvim" }
                },
                openrouter = {
                    endpoint = "https://openrouter.ai/api/v1/chat/completions",
                    secret = { "cat", "D:\\keys\\or_nvim" }
                },
            },
            agents = {
                {
                    provider = "copilot",
                    name = "LLM Code",
                    chat = false,
                    command = true,
                    model = { model = "claude-sonnet-4", temperature = 0.0001, top_p = 0.95 },
                    system_prompt = require("gp.defaults").code_system_prompt,
                },
                {
                    provider = "copilot",
                    name = "LLM Chat",
                    chat = true,
                    command = false,
                    model = { model = "claude-sonnet-4", temperature = 0.7, top_p = 0.95 },
                    system_prompt = require("gp.defaults").chat_system_prompt,
                },
            }
        }
        require("gp").setup(conf)
    end,
}
