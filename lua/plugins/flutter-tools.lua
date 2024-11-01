return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      debugger = {
        enabled = true,
        -- run_via_dap = true,
        -- exception_breakpoints = {},
        register_configurations = function(_)
          --   require("dap").configurations.dart = {}
          require("dap.ext.vscode").load_launchjs()
        end,
      },
    })
  end,
}
