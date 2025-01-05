local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup('plugins', {
    defaults = {
        lazy = true,
    },
})

--require("lazy").setup({
--	{
--		"rose-pine/neovim",
--		name = "rose-pine",
--		lazy = false,
--		priority = 1000,
--		config = function()
--			vim.cmd("colorscheme rose-pine")
--		end,
--	},
--
--	--{
--	--  "rebelot/kanagawa.nvim",
--	--  config = function()
--	--      vim.cmd.colorscheme("kanagawa")
--	--  end,
--	--},
--
--	{
--		"nvim-telescope/telescope.nvim",
--		dependencies = { { "nvim-lua/plenary.nvim" } },
--	},
--
--	{
--		"nvim-treesitter/nvim-treesitter",
--		build = ":TSUpdate",
--		config = function()
--			local configs = require("nvim-treesitter.configs")
--
--			configs.setup({
--				ensure_installed = { "vim", "vimdoc", "query", "javascript", "typescript", "c", "lua", "rust", "norg" },
--				sync_install = false,
--				highlight = { enable = true },
--				indent = { enable = true },
--			})
--		end,
--	},
--
--	"nvim-lua/plenary.nvim",
--	"theprimeagen/harpoon",
--	"mbbill/undotree",
--	"tpope/vim-fugitive",
--
--	{
--		"VonHeikemen/lsp-zero.nvim",
--		branch = "v2.x",
--		dependencies = {
--			-- LSP Support
--			{ "neovim/nvim-lspconfig" }, -- Required
--			{ -- Optional
--				"williamboman/mason.nvim",
--				build = function()
--					pcall(vim.cmd, "MasonUpdate")
--				end,
--			},
--			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
--
--			-- Autocompletion
--			{ "hrsh7th/nvim-cmp" }, -- Required
--			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
--			{ "L3MON4D3/LuaSnip" }, -- Required
--		},
--	},
--
--	"jose-elias-alvarez/null-ls.nvim",
--
--	{
--		"nvim-neorg/neorg",
--		lazy = false,
--		version = "*",
--		config = function()
--			require("neorg").setup({
--				load = {
--					["core.defaults"] = {},
--					["core.concealer"] = {},
--					["core.dirman"] = {
--						config = {
--							workspaces = {
--								notes = "~/Notes",
--							},
--							default_workspace = "notes",
--						},
--					},
--				},
--			})
--
--			vim.wo.foldlevel = 99
--			vim.wo.conceallevel = 2
--		end,
--	},
--})
