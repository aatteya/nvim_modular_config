
-- Allow communication with Windows clipboard
vim.opt.clipboard = "unnamedplus"

-- Set line number settings
vim.opt.number = true 
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2

-- Set tab settings
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.list = true
vim.opt.listchars = {
  tab = '│ ',
  trail = '.',
  extends = '»',
  precedes = '«',
}

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- vim: ts=2 sts=2 sw=2 et
