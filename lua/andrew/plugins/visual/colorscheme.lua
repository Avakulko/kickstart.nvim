-- TODO: configure colorschemes
-- TODO: colorscheme switching
return {
  {
    'luisiacc/gruvbox-baby',
    lazy = false,
    priority = 1000,
    config = function()
      -- Enable telescope theme
      -- vim.g.gruvbox_baby_telescope_theme = 1

      -- Enable transparent mode
      -- vim.g.gruvbox_baby_transparent_mode = 1

      vim.cmd.colorscheme 'gruvbox-baby'
    end,
  },
  -- {
  --   -- Theme inspired by Atom
  --   'navarasu/onedark.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('onedark').setup {
  --       style = 'deep', -- Options: dark, darker, cool, deep, warm, warmer, light
  --     }
  --     vim.cmd.colorscheme 'onedark'
  --   end,
  -- },
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight'
  --   end,
  -- },
  -- {
  --   'morhetz/gruvbox',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'gruvbox'
  --   end,
  -- },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('catppuccin').setup {
  --       integrations = {
  --         aerial = true,
  --         fidget = true,
  --         lsp_trouble = true,
  --         which_key = true,
  --       },
  --     }
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  -- },
  -- {
  --   'EdenEast/nightfox.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'nightfox'
  --   end,
  -- },
}
