-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- NOTE: This one is a history. Was used during transcribing interviews for Ola.
-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	pattern = { "respondent*.txt" },
-- 	callback = function()
-- 		vim.cmd("normal `[hhv`]v")
-- 		vim.cmd("normal ma")
-- 		local arg = [[s/\%V\(\a\|,\) \(\u\)/\1 \l\2/gce]]
-- 		print(arg)
-- 		vim.cmd(arg)
-- 		vim.cmd("normal `a")
-- 	end,
-- })

-- NOTE: I'm not using terminal inside vim for some time - tmux instead.
-- vim.api.nvim_create_autocmd("TermOpen", {
-- 	callback = function()
-- 		vim.notify("Use <Esc><Esc> or <C-\\><C-n> to enter normal mode")
-- 	end,
-- })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.rb",
	callback = function()
		vim.opt_local.spelloptions = "camel"
		vim.opt_local.spellcapcheck = ""
	end,
})
