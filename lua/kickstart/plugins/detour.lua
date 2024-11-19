return {
  'carbon-steel/detour.nvim',
  config = function()
    vim.keymap.set('n', '<leader>csr', function()
      local buf_number = vim.api.nvim_get_current_buf()
      local popup_id = require('detour').Detour()
      if not popup_id then
        return
      end
      require('csharp').run_project()
      vim.bo.bufhidden = 'delete'
      vim.wo[popup_id].signcolumn = 'no'
      vim.keymap.set('t', '<Esc>', '<Esc>', { buffer = true })
      vim.api.nvim_create_autocmd({ 'TermClose' }, {
        buffer = vim.api.nvim_get_current_buf(),
        callback = function()
          vim.api.nvim_feedkeys('i', 'n', false)
          -- vim.cmd(':b ' .. buf_number)
        end,
      })
      vim.api.nvim_create_autocmd('TermLeave', {
        callback = function()
          -- vim.api.nvim_set_current_buf(buf_number)
          -- vim.cmd 'wincmd l'
        end,
      })
    end)
    vim.keymap.set('n', '<leader>cp', function()
      local path = vim.api.nvim_buf_get_name(0)
      local popup_id = require('detour').Detour()
      if not popup_id then
        return
      end
      vim.cmd.terminal('python ' .. path)
      vim.bo.bufhidden = 'delete'
      vim.wo[popup_id].signcolumn = 'no'
      vim.keymap.set('t', '<Esc>', '<Esc>', { buffer = true })
      vim.cmd.startinsert()
      vim.api.nvim_create_autocmd('TermClose', {
        buffer = vim.api.nvim_get_current_buf(),
        callback = function()
          -- vim.api.nvim_feedkeys('i', 'n', false)
        end,
      })
    end)
  end,
}
