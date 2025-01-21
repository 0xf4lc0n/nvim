return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{
				"<leader>pf",
				function()
					builtin.find_files({})
				end,
			},
			{
				"<leader>p",
				function()
					builtin.git_files({})
				end,
			},
			{
				"<leader>ps",
				function()
					builtin.grep_string({ search = vim.fn.input("Grep > ") })
				end,
			},
		}
	end,
}
