return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      log_level = 'error',
      auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '~/.config', '/' },
      auto_session_use_git_branch = true,
      vim.keymap.set('n', '<leader>ss', require('auto-session.session-lens').search_session, { desc = '[S]earch [S]ession Lens', noremap = true }),
    }
  end,
}
