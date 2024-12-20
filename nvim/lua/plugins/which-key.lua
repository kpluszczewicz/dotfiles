return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function() -- This is the function that runs, AFTER loading
		local wk = require("which-key")

		-- Document existing key chains
		wk.add({
			{
				"<leader>c",
				function()
					local path = vim.fn.expand("%:.")
					vim.fn.setreg("+", path)
					vim.notify('Copied "' .. path .. '" to the clipboard!')
				end,
				desc = "Copy file path to clipboard (relative)",
			},
			{ "<leader>g", desc = "[G]it utitlites" },
			{ "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Toggle :GitBlame" },
			{ "<leader>w", group = "[W]orkspace" },
			{
				"<leader>ws",
				function()
					local new_session_name = vim.fn.input({
						prompt = "Type new session name: ",
						default = vim.g.Session_name,
					})
					if new_session_name ~= "" then
						vim.g.Session_name = new_session_name
					end
				end,
				desc = "Set [s]ession name",
			},
			{
				"<leader>wt",
				function()
					local new_tab_name = vim.fn.input({
						prompt = "Type new tab name: ",
					})
					vim.cmd("LualineRenameTab " .. new_tab_name)
				end,
				desc = "Set custom [t]ab name",
			},
		})
		-- NOTE: Those were added in the beginning
		-- ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
		-- ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
		-- ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
		-- ["<leader>w"] = { name = "[W]orkspace",
		-- wk.register({
		-- 	s = {
		-- 		":source %<CR>",
		-- 		"Source current file",
		-- 	},
		-- }, { prefix = "<leader>" })
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
