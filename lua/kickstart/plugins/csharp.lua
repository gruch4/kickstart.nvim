return {
  'gruch4/csharp.nvim',
  version = '*',
  dependencies = {
    'mason-org/mason.nvim',
    'mfussenegger/nvim-dap',
    'Tastyep/structlog.nvim',
  },
  config = function()
    require('mason').setup()
    require('csharp').setup()
    -- require('csharp').debug_project()
    -- require('csharp').run_project()
    -- require('csharp').fix_usings()
  end,

  -- vim.keymap.set('n', '<leader>csr', '<cmd>lua require("csharp").run_project()<cr>'),
  --vim.keymap.set('n', '<leader>csr', function()
  --  require('csharp').run_project()
  -- end),
}
