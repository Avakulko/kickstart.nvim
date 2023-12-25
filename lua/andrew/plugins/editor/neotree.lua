-- TODO: preserve session
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    {
      's1n7ax/nvim-window-picker',
      version = '2.*',
      config = function()
        require('window-picker').setup {
          hint = 'floating-big-letter', -- 'statusline-winbar'
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              -- TODO: filter out trouble window, fidget.nvim
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify', 'trouble' },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', 'quickfix', 'trouble' },
            },
          },
        }
      end,
    },
  },
  -- TODO: implement lazyvim utils like Util.root()
  keys = {
    { '<leader>\\', '<cmd>Neotree reveal<cr>', desc = '', noremap = true },
    -- { '<leader>ff', '<cmd>Neotree float reveal_file=<cfile><cr>', desc = '', noremap = true },
    { '<leader>gs', '<cmd>Neotree float git_status<cr>', desc = '[G]it [S]tatus', noremap = true },
  },
  deactivate = function()
    vim.cmd [[Neotree close]]
  end,
  init = function()
    if vim.fn.argc(-1) == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == 'directory' then
        require 'neo-tree'
      end
    end
  end,
  config = function()
    -- If you want icons for diagnostic errors, you'll need to define them somewhere:
    vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
    vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
    vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
    vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })

    require('neo-tree').setup {
      source_selector = {
        winbar = true,
        content_layout = 'center',
        show_scrolled_off_parent_node = true, -- this will replace the tabs with the parent path of the top visible node when scrolled down.
        sources = {
          { source = 'filesystem' },
          { source = 'buffers' },
          { source = 'git_status' },
          -- TODO: document_symbols not working
          -- { source = 'document_symbols' },
        },
      },
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      window = {
        mappings = {
          -- TODO: window_picker?
          ['S'] = 'split_with_window_picker',
          ['s'] = 'vsplit_with_window_picker',
          ['w'] = 'open_with_window_picker',
          ['a'] = {
            'add',
            -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
            -- some commands may take optional config options, see `:h neo-tree-mappings` for details
            config = {
              show_path = 'relative', -- "none", "relative", "absolute"
            },
          },
        },
      },
      -- BUG: breaks fzf if enabled in .config/nvim
      filesystem = {
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time the current file is changed while the tree is open.
        },
        window = {
          fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
            ['<C-k>'] = 'move_cursor_up',
            ['<C-j>'] = 'move_cursor_down',
          },
        },
      },
    }
  end,
}
