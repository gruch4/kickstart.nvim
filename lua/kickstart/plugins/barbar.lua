return {
  'romgrk/barbar.nvim',
  version = '*',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = true,
  },
  vim.keymap.set('n', '<A-,>', '<cmd>BufferPrevious<CR>'),
  vim.keymap.set('n', '<A-.>', '<cmd>BufferNext<CR>'),
  vim.keymap.set('n', '<A-c>', '<cmd>BufferClose<CR>'),
}
