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
		name = 'gruber-darker',
		config = function()
			vim.cmd('colorscheme gruber-darker')
		end
	},
}
