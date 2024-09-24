return {
  'zbirenbaum/copilot-cmp',
  version = '*',
  dependencies = {
    'zbirenbaum/copilot.lua',
  },
  config = function()
    require('copilot_cmp').setup()
  end,
}
