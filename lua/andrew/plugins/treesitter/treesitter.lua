-- TODO: whatch about textobjects and queries https://www.youtube.com/watch?v=ff0GYrK3nT0&list=PLx2ksyallYzW4WNYHD9xOFrPRYGlntAft&index=5
-- TODO: check this configuration https://github.com/josean-dev/dev-environment-files/blob/main/.config/nvim/lua/josean/plugins/nvim-treesitter-text-objects.lua
-- TODO: what are nvim-treesitter-textsubjects
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  -- TODO: wrap config in vim.defer_fn( , 0)
  -- FIX: textobjects not working
  config = function()
    local treesitter = require 'nvim-treesitter.configs'
    treesitter.setup {
      {
        -- Add languages to be installed here that you want installed for treesitter
        ensure_installed = { 'c', 'lua', 'python', 'vimdoc', 'vim', 'bash', 'nix', 'json', 'query' },

        -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
        auto_install = false,

        highlight = { enable = true },
        indent = { enable = true },
        -- Use tree-sitter mode of folke/flash instead
        -- incremental_selection = {
        --   enable = true,
        --   keymaps = {
        --     init_selection = '<c-space>', -- conflicting keymap
        --     node_incremental = '<c-space>', -- conflicting keymap
        --     scope_incremental = '<c-s>',
        --     node_decremental = '<M-space>',
        --   },
        -- },
        textobjects = {
          select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ['aa'] = '@parameter.outer',
              ['ia'] = '@parameter.inner',
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              [']m'] = '@function.outer',
              [']]'] = '@class.outer',
            },
            goto_next_end = {
              [']M'] = '@function.outer',
              [']['] = '@class.outer',
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
              ['[['] = '@class.outer',
            },
            goto_previous_end = {
              ['[M'] = '@function.outer',
              ['[]'] = '@class.outer',
            },
          },
          swap = {
            enable = true,
            -- TODO: conflicting keymaps
            swap_next = {
              ['<leader>a'] = '@parameter.inner',
            },
            swap_previous = {
              ['<leader>A'] = '@parameter.inner',
            },
          },
        },
      },
    }
  end,
}
