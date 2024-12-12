M = {}

vim.keymap.set("n", "<leader>rr", function()
	require("telescope.builtin").live_grep({
		glob_pattern = "kamil/routes.txt",
	})
end)

return M
