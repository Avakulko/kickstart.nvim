-- TODO: use another theme? Does another theme require devicons?
return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('alpha').setup(require('alpha.themes.dashboard').config)
  end,
}
