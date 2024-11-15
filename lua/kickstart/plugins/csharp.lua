return {
  'iabdelkareem/csharp.nvim',
  version = '*',
  dependencies = {
    'williamboman/mason.nvim',
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
}

-- vim.keymap.set('n', '<leader>csr')
