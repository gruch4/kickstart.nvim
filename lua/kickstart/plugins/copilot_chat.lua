return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'canary',
  dependencies = {
    'zbirenbaum/copilot.lua',
    'nvim-lua/plenary.nvim',
  },
  build = 'make tiktoken',
  opts = {
    debug = false,
    window = {
      layout = 'float',
      relative = 'cursor',
      width = 1,
      heigh = 0.4,
      row = 1,
    },
  },
  keys = {
    { '<leader>cch', '<cmd>CopilotChatOpen<cr>', desc = 'Copilot Chat' },
  },
}
