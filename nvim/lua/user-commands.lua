-- :LanguageCheatSheet       opens https://learnxinyminutes.com/docs/{filetype}

-- TODO: Need to tweak this
vim.api.nvim_create_user_command("LanguageCheatSheet", function()
	-- check if file is on the disk, if not, download it
	local cheatpath = vim.fn.stdpath("config") .. "/cheatsheets/"
	local mappings = {
		lua = "learnlua.lua",
		ruby = "learnruby.rb",
		markdown = "markdown.md",
	}
	vim.api.nvim_cmd(vim.api.nvim_parse_cmd("sp " .. cheatpath .. mappings[vim.bo.filetype], {}), {})
end, {})

local function git_branch_name()
	local branch = vim.fn.system("git branch --show-current 2> /dev/null | tr -d '\n'")
	if branch ~= "" then
		return branch
	else
		return ""
	end
end

vim.api.nvim_create_user_command("MkBranchNamedSession", function()
	local repository_name = vim.fn.system("basename `git rev-parse --show-toplevel` | tr -d '\n'")
	local command = "mksession! ~/.config/nvim/sessions/session-"
		.. repository_name
		.. "-"
		.. git_branch_name()
		.. ".vim"
	print('Invoking "' .. command .. '"')
	vim.api.nvim_cmd(vim.api.nvim_parse_cmd(command, {}), {})
end, {})

vim.api.nvim_create_user_command("Notes", function()
	-- local git_branch_name = require("lualine.components.branch.git_branch").get_branch()
	vim.cmd("vs kamil/" .. git_branch_name() .. ".md")
end, {})
