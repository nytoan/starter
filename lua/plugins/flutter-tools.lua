return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require("flutter-tools").setup({
      debugger = {
        enabled = true,
        exception_breakpoints = {},
        register_configurations = function(_)
          require("dap.ext.vscode").load_launchjs()
        end,
      },
    })
  end,
}
