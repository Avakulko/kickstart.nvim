-- Always open help in a vertical split
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'help',
  callback = function()
    vim.api.nvim_command 'wincmd L'
  end,
  desc = 'Open help in a vertical split',
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
