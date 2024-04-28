return {
    {
        "mfussenegger/nvim-dap",
        -- [config = function()] is needed for configuration
        -- require() is c++'s #include <something> equivalent
        config = function ()
            local dap = require('dap')
            vim.keymap.set('n', '<leader>mu', dap.toggle_breakpoint, {})
        end
    },
    {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        config = function ()
            local dap   = require('dap')
            local dapui = require('dapui')
            dap.listeners.before.attach.dapui_config = function()
                  dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                  dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                  dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                  dapui.close()
            end

        end
    }
}
