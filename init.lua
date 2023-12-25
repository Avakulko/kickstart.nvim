-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'andrew.core'
require 'andrew.lazy'
-- git
-- OBSIDIAN ZARYADKA
-- TODO: plugins
-- move lsp, formating, linting to code dir
--  s for vertical split; S for horizontal split everywhere. horizontal split not working
--  hydra
--  harpoon
--  folke/noice.nvim
--  undotree
--  nvim-ufo
--  nvim autopairs treesitter
--  stevanmilic/nvim-lspimport
--  AI: Exafunction/codeium.nvim ollama
--  nvim-dap nvim-dap ui
--  TODO: make configuration for nvim-web-devicons
-- TODO: Markdown, typst
--  obsidian
--  chomosuke/typst-preview.nvim
-- TODO: languages setup
--  Markdown
--  sql
--  python
--  benlubas/molten-nvim GCBallesteros/jupytext.nvim
-- FIX:
-- tabout
-- ciq, diq: [q]uotes textobject
-- ctrl-c not copying from neovim to system clipboard. Yanking cannot be pasted to terminal with insert
-- more/less program
-- precommit
-- neovim nightly
-- checkhealth
-- telescope: fd
-- TODO: configure which-key after all plugins are set up
-- Implement utils from folke lazyvim
-- Keep up with kickstart and folke/lazyvim
