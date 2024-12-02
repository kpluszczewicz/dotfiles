return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically },
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		-- WARN: If opts are not set, then everything fucks up
		opts = {},
	},
	{
		"ethanholz/nvim-lastplace",
		opts = {
			lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
			lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
			lastplace_open_folds = true,
		},
		config = function()
			require("nvim-lastplace").setup()
		end,
	},
}
