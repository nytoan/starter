return {
  "dstein64/nvim-scrollview",
  lazy = false, -- Chargé immédiatement au démarrage
  config = function()
    require('scrollview').setup({
      excluded_filetypes = { 'nerdtree' },
      current_only = true,
      signs_on_startup = { 'all' },
      diagnostics_severities = { vim.diagnostic.severity.ERROR }
    })
  end,
}
