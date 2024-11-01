return {
  "karb94/neoscroll.nvim",
  lazy = false,
  config = function()
    require("neoscroll").setup({
      easing = "quadratic"
    })

    local t = {}
    t['<C-u>'] = { 'scroll', { -vim.wo.scroll, { move_cursor = true, duration = 100, easing = 'quadratic' } } }
    t['<C-d>'] = { 'scroll', { vim.wo.scroll, { move_cursor = true, duration = 100, easing = 'quadratic' } } }
    t['<C-b>'] = { 'scroll', { -vim.api.nvim_win_get_height(0), { move_cursor = true, duration = 250, easing = 'quadratic' } } }
    t['<C-f>'] = { 'scroll', { vim.api.nvim_win_get_height(0), { move_cursor = true, duration = 250, easing = 'quadratic' } } }
    t['<C-y>'] = { 'scroll', { -0.10, { move_cursor = false, duration = 50, easing = 'quadratic' } } }
    t['<C-e>'] = { 'scroll', { 0.10, { move_cursor = false, duration = 50, easing = 'quadratic' } } }

    local neoscroll = require('neoscroll')

    for k, v in pairs(t) do
      vim.keymap.set('n', k, function() neoscroll[v[1]](unpack(v[2])) end, { silent = true })
    end
  end
}
