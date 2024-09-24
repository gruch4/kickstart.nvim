return {
  'onsails/lspkind.nvim',
  version = '*',
  config = function()
    require('lspkind').setup {
      mode = 'symbol_text',
    }
  end,
}
