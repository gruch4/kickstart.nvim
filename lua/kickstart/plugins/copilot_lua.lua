return {
  'zbirenbaum/copilot.lua',
  version = '*',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = {
        enabled = false,
        auto_refresh = true,
      },
      suggestion = {
        enabled = false,
      },
    }
  end,
}
