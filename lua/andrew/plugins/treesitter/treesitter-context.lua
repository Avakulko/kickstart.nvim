-- TODO: keybinding for TSContextToggle
return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    vim.keymap.set('n', '[c', function()
      require('treesitter-context').go_to_context()
    end, { desc = 'Go to [c]ontext', silent = true })
  end,
}
