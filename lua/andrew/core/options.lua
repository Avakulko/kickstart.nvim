-- TODO: difference between vim.opt and vim.wo
local opt = vim.opt
opt.number = true -- Show line number in front of each line
opt.relativenumber = true -- Make line number relative to the line with the cursor
opt.scrolloff = 999 -- Show at least one line above/below the cursor
opt.sidescrolloff = 8 -- Show at least 5 columns to the left/right of the cursor
opt.breakindent = true -- Continue wrapped line visually indented
opt.hlsearch = false -- Set highlight on search
opt.mouse = 'a' -- Enable mouse mode
opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. See `:help 'clipboard'`
opt.undofile = true -- Save undo history
opt.undolevels = 10000
opt.termguicolors = true -- Make sure terminal supports this option
opt.signcolumn = 'yes' -- Always show the signcolumn, otherwise it would shift the text each time
-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true
-- Decrease update time
opt.updatetime = 200
opt.timeoutlen = 300
-- TODO: how does this line interfere with cmp plugin completeopt?
opt.completeopt = 'menu,menuone,noselect' -- Set completeopt to have a better completion experience

-- Enable LazyVim auto format
-- vim.g.autoformat = true

-- LazyVim root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
-- vim.g.root_spec = { 'lsp', { '.git', 'lua' }, 'cwd' }
--
--
opt.autowrite = true -- Enable auto write
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.formatoptions = 'jcroqlnt' -- tcqj
opt.grepformat = '%f:%l:%c:%m'
opt.grepprg = 'rg --vimgrep'
opt.inccommand = 'nosplit' -- Preview incremental substitute
opt.laststatus = 3 -- Global statusline
opt.list = true -- Show some invisible characters (tabs...
opt.pumblend = 15 -- Popup blend (transparency)
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.shortmess:append { W = true, I = true, c = true, C = true }
opt.showmode = false -- Dont show mode since we have a statusline
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { 'en', 'ru' } -- Requires vim.opt.spell = true
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = 'screen'
opt.splitright = true -- Put new windows right of current
opt.virtualedit = 'block' -- Allow cursor to move where there is no text in visual block mode
opt.wildmode = 'longest:full,full' -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap
opt.fillchars = {
  foldopen = '',
  foldclose = '',
  -- fold = "⸱",
  fold = ' ',
  foldsep = ' ',
  diff = '╱',
  eob = ' ',
}
vim.g.markdown_recommended_style = 0 -- Fix markdown indentation settings

if vim.fn.has 'nvim-0.10' == 1 then
  opt.smoothscroll = true
end

-- Folding
opt.foldlevel = 99
-- vim.opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"

-- if vim.fn.has("nvim-0.9.0") == 1 then
--   vim.opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
-- end

-- HACK: causes freezes on <= 0.9, so only enable on >= 0.10 for now
-- if vim.fn.has("nvim-0.10") == 1 then
--   vim.opt.foldmethod = "expr"
--   vim.opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
-- else
--   vim.opt.foldmethod = "indent"
-- end

-- vim.o.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
