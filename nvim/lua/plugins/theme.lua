return {
	{
		'rose-pine/neovim',
		name = 'rose-pine',
	},
	{
		'erikbackman/brightburn.vim',
		name = 'brightburn',
	},
	{
		'blazkowolf/gruber-darker.nvim',
		opts = {
			bold = true,
			italic = {
				strings = false,
				comments = false,
				folds = false,
			},
		},
		name = 'gruber-darker',
		config = function	(_, opts)
			require('gruber-darker').setup(opts)
			vim.cmd('colorscheme gruber-darker')
		end
	},
}
