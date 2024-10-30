return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  -- lazy = false -- Permet de lancer le plugin au démarrage
  config = function()
    require('diffview').setup {
      enhanced_diff_hl = true, -- Active la coloration avancée des différences
      view = {
        default = {
          layout = 'diff2_horizontal',
        },
      },
      keymaps = {
        view = {
          ['<leader>e'] = '<cmd>DiffviewClose<CR>', -- Fermer Diffview avec <leader>e
        },
      },
    }
  end,
}
