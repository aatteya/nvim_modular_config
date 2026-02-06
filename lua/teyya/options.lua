
-- Allow communication with Windows clipboard
vim.opt.clipboard = "unnamedplus"

-- Set line number settings
vim.opt.number = true 
vim.opt.relativenumber = true

-- Set tab settings
vim.o.breakindent = true
vim.opt.expandtab = false
vim.opt.list = true
vim.opt.listchars = {
  tab = '│ ',
  leadmultispace = '│ ',
  trail = '.',
  extends = '»',
  precedes = '«',
  nbsp = '␣',
}

-- Misc settings (nerdfonts, mouse, undo history)
vim.g.have_nerd_font = false
vim.o.mouse = 'a'
vim.o.undofile = true

-- case insensitive searching unless one or more capital letters in search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Viewing settings (change something in how text is drawn or settings regarding status bar, sign column
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.cursorline = true -- highlight line where cursor is
vim.o.scrolloff = 12 -- minimum number of lines above and below cursor

-- Windows settings
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = 'nosplit'

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- vim: ts=2 sts=2 sw=2 et
