vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open diagnostic [E]rror float window' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>wh', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<leader>wl', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<leader>wj', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<leader>wk', '<C-w>K', { desc = 'Move window to the upper' })

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

-- Change cwd to the current file
vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', { desc = '[C]hange pwd to the [d]irecotry of the currently open file'})

-- Move through quickfix list and local list
vim.keymap.set('n', '<A-j>', ':cnext<CR>zz', { desc = 'Jump to next Quickfix list item' })
vim.keymap.set('n', '<A-k>', ':cprev<CR>zz', { desc = 'Jump to previous Quickfix list item' })
vim.keymap.set('n', '<A-l>', ':lnext<CR>zz', { desc = 'Jump to next Location list item' })
vim.keymap.set('n', '<A-h>', ':lprev<CR>zz', { desc = 'Jump to previous Location list item' })

-- Nvim-Terminal remaps
vim.keymap.set('n', '<leader>st', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd('J')
	vim.api.nvim_win_set_height(0, 15)
	vim.cmd('startinsert')
end)

-- paste in visual mode
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = '[P]aste in visual mode without copying' })
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d", { desc = '[D]elete without copying' })

-- Move lines up and down (bubble move)
vim.keymap.set('n', '<A-J>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-K>', ':m .-2<CR>==', { desc = 'Move line up' })
-- Move selected blocks up and down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move block up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move block up' })

-- Center search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
-- cjnter window after C-d / C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Join line below without moving cursor
vim.keymap.set('n', 'J', 'mzJ`z')
-- indent and move cursor to beginning of line (notice using ' instead of `)
vim.keymap.set('n', '=ap', "mz=ap'z")
-- find and replace
vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[F]ind and [Replace]' })


local function remap_with_ignored_filetypes(in_command, remap_command)
	local ignored_filetypes = { qf = true, netrw = true, vim = true }
	if ignored_filetypes[vim.bo.filetype] then
		return in_command
	else
		return remap_command
	end
end

-- Remap Enter to add new lines
vim.keymap.set('n', '<CR>', function()
	return remap_with_ignored_filetypes('<CR>', 'o<Esc>')
end, { desc = 'Add new line in normal mode', expr = true, silent = true})
