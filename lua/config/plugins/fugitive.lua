return {
	'tpope/vim-fugitive',
	cmd = { 'G', 'Git', 'Gdiffsplit', 'Gvdiffsplit', 'Ghdiffsplit', 'Gread', 'Gwrite', 'Ggrep', 'GMove', 'GDelete', 'GBrowse'},
	keys = { 
		{'<leader>gs', '<cmd>Git<cr>', desc = 'Git status' },
		{'<leader>gd', '<cmd>Gvdiffsplit<cr>', desc = 'Git diff split' },
	},
}
