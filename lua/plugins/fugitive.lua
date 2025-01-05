return {
	"tpope/vim-fugitive",
    lazy = false,
	keys = {
		{
			"<leader>gs",
            function()
                vim.cmd('Git')
            end
		},
	},
}
