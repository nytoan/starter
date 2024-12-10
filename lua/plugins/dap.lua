return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
    },
    lazy = false,
    config = function()
      local dap = require "dap"
      local ui = require "dapui"

      require("dapui").setup()
      require("nvim-dap-virtual-text").setup()

      dap.adapters.dart = {
        type = "executable",
        command = "dart",
        args = { "debug_adapter" },
      }

      vim.keymap.set("n", "<leader>bb", dap.toggle_breakpoint)
      -- vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

      vim.keymap.set("n", "<leader>or", ui.toggle)

      -- dap.listeners.before.attach.dapui_config = function()
      --   ui.open()
      -- end
      -- dap.listeners.before.launch.dapui_config = function()
      --   ui.open()
      -- end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end
  }
}
