-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    default_component_configs = {
      git_status = {
        symbols = {
          modified = 'M',
          unstaged = '',
        },
      },
    },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          '.git',
          '.github',
          '.cache',
          '.vscode',
          '.idea',
          '__pycache__',
          '.mypy_cache',
          '.pytest_cache',
          '.ruff_cache',
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  init = function()
    vim.api.nvim_create_augroup('neotree', { clear = true })
    vim.api.nvim_create_autocmd('VimEnter', {
      desc = 'Open Neotree on startup',
      group = 'neotree',
      callback = function()
        vim.cmd 'Neotree toggle'
        vim.cmd 'set nornu nonu'
        vim.cmd 'wincmd l'
      end,
    })
  end,
}
