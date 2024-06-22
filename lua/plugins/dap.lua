return {
  -- Debugger.
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui", -- open windows for debugger
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    require("dapui").setup()
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
    -- python congifurations
    require("dap-python").setup("python")
    -- Key mapping
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>ds", dap.continue, {}) -- start debugging
  end,
}
