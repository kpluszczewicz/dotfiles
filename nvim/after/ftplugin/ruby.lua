vim.keymap.set("n", "K", function()
	local word = vim.fn.expand("<cword>")
	local lines = vim.fn.system("ri -f markdown " .. word)
	vim.lsp.util.open_floating_preview({ lines }, "markdown", { focus_id = "ri" })
end, { buffer = 0 })
