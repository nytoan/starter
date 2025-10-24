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
      dev_log = {
        filter = function(line)
          if line:match("EGL_emulation") or line:match("ImageReader_JNI") then
            return false
          end
          return true
        end
      }
    })
  end,
}
