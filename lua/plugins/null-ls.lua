return {
	"jose-elias-alvarez/null-ls.nvim",
	lazy = false,
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			on_attach = function(client, bufnr)
				vim.api.nvim_buf_set_keymap(
					bufnr,
					"n",
					"<leader>f",
					"<cmd>lua vim.lsp.buf.format()<CR>",
					{ noremap = true, silent = true }
				)
			end,

			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				null_ls.builtins.formatting.autopep8,
			},
		})
	end,
}
