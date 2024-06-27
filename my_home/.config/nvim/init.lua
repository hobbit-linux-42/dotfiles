local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		name="kanagawa",
		priority=10000
	},

	{
    		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' }
    	},
	{
    		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	}
}


require("lazy").setup(plugins)
require('lualine').setup {
	options = { theme = 'horizon' }
}
vim.cmd("colorscheme kanagawa-wave")
