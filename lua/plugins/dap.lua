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

      require("dapui").setup({
        layouts = { {
          elements = { {
            id = "scopes",
            size = 0.4
          }, {
            id = "breakpoints",
            size = 0.2
          }, {
            id = "stacks",
            size = 0.2
          }, {
            id = "watches",
            size = 0.2
          } },
          position = "left",
          size = 40
        }, {
          elements = { {
            id = "repl",
            size = 1
          } },
          position = "bottom",
          size = 12
        } },

      })
      require("nvim-dap-virtual-text").setup()

      dap.adapters.dart = {
        type = "executable",
        command = "dart",
        args = { "debug_adapter" },
      }

      vim.keymap.set("n", "<leader>bb", dap.toggle_breakpoint)
      -- vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

      vim.keymap.set("n", "<leader>or", ui.toggle)

      vim.keymap.set("n", "<leader>ot", function() dap.repl.toggle({ height = 15 }) end)

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
