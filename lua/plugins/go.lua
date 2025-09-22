return {
  "ray-x/go.nvim",
  dependencies = {
    "ray-x/guihua.lua"
  },
  opts = {
    lsp_cfg = true,
    lsp_on_attach = false,
  },
  config = function(_, opts)
    require("go").setup(opts)
  end,
  ft = { "go", 'gomod' },
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
