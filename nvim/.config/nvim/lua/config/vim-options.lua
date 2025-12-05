-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Misc configuration
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Change signcolumn width
vim.opt.signcolumn = 'yes:2'

-- Render white spaces
vim.opt.list = true
vim.opt_global.list = true
vim.opt.listchars = {
  space = "·",
  trail = "•",
  tab   = "→ ",
  nbsp  = "⍽",
  lead  = "·",
}

-- Enable spell checking
vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.api.nvim_set_option("clipboard", "unnamed")
