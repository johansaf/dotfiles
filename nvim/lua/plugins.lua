local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
	},
	{
		"gruvbox-community/gruvbox",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[
        let g:gruvbox_colors = { 'bg0': ['#000000', 0] }
        colorscheme gruvbox
        highlight clear CursorLineNr
      ]])
			vim.g.gruvbox_bold = 1
			vim.g.gruvbox_italic = 1
			vim.g.gruvbox_underline = 1
		end
	},
	"nvim-treesitter/nvim-treesitter",
	{ "nvim-treesitter/playground", run = ":TSUpdate" },
	"mbbill/undotree",
	"kyazdani42/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"numToStr/Comment.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		}
	},
	{
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
	},
	{
		"smoka7/hop.nvim",
		version = "*",
		opts = {},
	},
})
