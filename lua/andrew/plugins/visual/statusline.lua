-- TODO: configure hide winbar in certain filetypes (like oil.nvim) and configure tabs.
-- Configure how filename is displayed
-- Do I need tabbar?
-- add session name?
return {
  'nvim-lualine/lualine.nvim',

  opts = {
    options = {
      component_separators = '|',
      section_separators = '',
    },
    -- FIX: lualine winbar hides neo-tree winbar
    -- winbar = {
    --   lualine_a = {},
    --   lualine_b = {},
    --   lualine_c = { 'filename' },
    --   lualine_x = {},
    --   lualine_y = {},
    --   lualine_z = {},
    -- },

    -- inactive_winbar = {
    --   lualine_a = {},
    --   lualine_b = {},
    --   lualine_c = { 'filename' },
    --   lualine_x = {},
    --   lualine_y = {},
    --   lualine_z = {},
    -- },

    -- tabline = {
    --   lualine_a = {},
    --   lualine_b = {},
    --   lualine_c = {},
    --   lualine_x = {},
    --   lualine_y = {},
    --   lualine_z = { 'tabs' },
    -- },

    extensions = {
      'aerial',
      'fugitive',
      'lazy',
      'trouble',
      'nvim-dap-ui',
      'neo-tree',
    },
  },
}
