return {
  'HiPhish/rainbow-delimiters.nvim',
  lazy = false,
  config = function()
    vim.g.rainbow_delimiters = {
      highlight = {
        'RainbowDelimiterYellow',
        'RainbowDelimiterViolet',
        'RainbowDelimiterBlue',
      },
    }
  end
}
