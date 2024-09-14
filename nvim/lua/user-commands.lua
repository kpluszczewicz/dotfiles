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

local file_exists = function(file_path)
	local f = io.open(file_path, "r")
	io.close(f)
	if f then
		return true
	else
		return false
	end
end

local file_path_in_spec = function(file_path_in_app)
	print("'spec' not found in file, searching for test file:")
	local file_path = string.gsub(file_path_in_app, "app/", "spec/")
	file_path = string.gsub(file_path_in_app, ".rb", "_spec.rb")
	if file_exists(file_path) then
		return true
	end

	local file_path = string.gsub(file_path, "spec/", "spec/unit/")
	if file_exists(file_path) then
		return true
	end

	return false
end

vim.api.nvim_create_user_command("LastMigration", function()
	local migration_list = vim.fn.system({ "ls", "-1", "/Users/kamilpluszczewicz/koleo/db/migrate" })
	-- It is not allowed to call vim function in callbacks. Need to schedule them.
	local on_exit = vim.schedule_wrap(function(obj)
		local last_migration = "~/koleo/db/migrate/" .. obj.stdout
		vim.cmd("sp " .. last_migration)
	end)
	local sys_obj = vim.system({ "tail", "-n 1" }, { stdin = true, text = true }, on_exit)
	sys_obj:write(migration_list)
	sys_obj:write(nil)
end, {})

vim.api.nvim_create_user_command("Rspec", function()
	-- local cwd = vim.loop.cwd() or ""
	-- local cwd_len = string.len(cwd)
	local test_file_path = vim.fn.expand("%")
	-- local relative_path = string.sub(full_path, cwd_len + 2)

	if not string.find(test_file_path, "spec") then
		-- local f = io.open(test_file_path, "r")
		-- if f then
		-- 	print("file " .. test_file_path .. " exists.")
		-- 	io.close(f)
		-- else
		-- 	print("File " .. test_file_path .. " doesn't exist!")
		-- end
		if vim.g.Rspec and vim.g.Rspec.last_spec_file then
			test_file_path = vim.g.Rspec.last_spec_file
		else
			return
		end
	end

	vim.g.Rspec = { last_spec_file = test_file_path }
	print("tmux send-keys -t KOLEO:Console.0 'C-ubundle exec rspec --no-profile " .. test_file_path .. "' Enter")
	vim.system({
		"tmux",
		"send-keys",
		"-t",
		"KOLEO:Console.0",
		"C-u",
		"bundle exec rspec ",
		"--no-profile ",
		test_file_path,
		"Enter",
	}, { text = true })
end, {})
