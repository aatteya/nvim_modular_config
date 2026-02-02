
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- Toggle invisible characters (indent lines)
vim.keymap.set('n', '<leader>i', function()
	vim.opt.list = not vim.opt.list:get()

	if vim.opt.list:get() then
		print('Show indentation marks')
	else
		print('Hide indentation marks')
	end
end,
{desc = "Toggle indent lines"})


-- Move lines up and down (bubble move)
vim.keymap.set('n', '<A-j>', ':m .+1<CR>== ', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>== ', { desc = 'Move line up' })

-- Move selected blocks up and down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move block up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move block up' })

