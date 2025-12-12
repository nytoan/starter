local function has_value(tab, val)
  for _, value in ipairs(tab) do
    if val:match(value) then
      return true
    end
  end

  return false
end

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
        open_cmd = "80vsplit",
        filter = function(line)
          if has_value({
                "EGL_emulation",
                "ImageReader_JNI",
                "cr_VideoCapture",
                "CCodec",
                "Codec2Client",
                "cn_CronetUrlRequestContext",
                "BufferPoolAccessor2",
                "ReflectedParamUpdater",
                "SurfaceUtils",
                "InputConnectionAdaptor",
                "InsetsController",
                "ImeTracker",
                "TrafficStats",
                "WindowOnBackDispatcher",
                "PigeonProxyApiRegistrar",
                "PlatformViewsController"
              }, line) then
            return false
          end
          return true
        end
      }
    })
  end,
}
