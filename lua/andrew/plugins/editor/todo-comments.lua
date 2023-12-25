return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local todo_comments = require 'todo-comments'
    todo_comments.setup()

  -- stylua: ignore start
    vim.keymap.set('n', ']t', function() todo_comments.jump_next() end, { desc = 'Next todo comment' })
    vim.keymap.set('n', '[t', function() todo_comments.jump_prev() end, { desc = 'Previous todo comment' })
    -- TODO: todo trouble should focus current file when opened
    vim.keymap.set('n', '<leader>xt', '<cmd>TodoTrouble<cr>', { desc = 'Todo', noremap = true, silent = true })
    vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<cr>', { desc = '[S]earch [T]odo', noremap = true, silent = true })
  end,
}
