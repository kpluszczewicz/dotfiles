-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
vim.o.relativenumber = true
-- Yes, I like it very much! Thank you The Primegean!

-- Enable mouse mode, can be useful for resizing splits for example!
-- vim.o.mouse = "a"

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help clipboard`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Draw vertical line to indicate line is getting to long
-- vim.o.colorcolumn = "80"

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how Neovim will display certain whitespace in the editor
--  See `:help 'list'`
--  See `:help 'listchars'`
-- vim.o.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.guicursor = "n:blinkwait100-blinkon200-blinkoff150,i-ci:ver30-iCursor-blinkwait100-blinkon200-blinkoff150"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set highlight on serach, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- NOTE: Tabstop and shiftwidth are detected automatically by 'tpope/vim-sleuth' plugin
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.cmd("set nowrap")

-- [[ Diagnostic column signs ]]
vim.fn.sign_define("DiagnosticSignError", { text = "", linehl = "", texthl = "DiagnosticSignError", numhl = "" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", linehl = "", texthl = "DiagnosticSignWarn", numhl = "" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", linehl = "", texthl = "DiagnosticSignInfo", numhl = "" })
vim.fn.sign_define("DiagnosticSignHint", { text = "💡", linehl = "", texthl = "DiagnosticSignHint", numhl = "" })

-- [[ Session options]]
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,terminal,globals"

-- [[ Spell checking ]]
vim.o.spell = true
vim.o.spelllang = "en,pl"

-- [[ shellredir ]]
vim.o.shellredir = ">%s"

-- NOTE: For now (12/03/2024) disable custom tagfunc.
--	It needs to be corrected:
--		- if word under cursor is ruby constant with '::' then path should be checked in taglist,
--		- otherwise return normal taglist.
--
-- function TagFunc(pattern, flags, info)
-- 	local function compareFilenames(item1, item2)
-- 		local f1 = item1["filename"]
-- 		local f2 = item2["filename"]
-- 		return f1 >= f2
-- 	end
--
-- 	local result = vim.fn.taglist(pattern)
-- 	-- vim.fn.sort(result, compareFilenames)
-- 	return result
-- end
--
-- vim.cmd([[
-- 	function CompareFilenames(item1, item2)
-- 		let f1 = a:item1['filename']
-- 		let f2 = a:item2['filename']
-- 		return f1 >=# f2 ? \ -1 : f1 <=# f2 ? 1 : 0
-- 	endfunction
--
-- 	function TagFunc1(pattern, flags, info)
-- 		let class_name = expand('<cword>')
-- 		"let splitted_pattern = split(a:pattern, '::')
-- 		let splitted_pattern = split(class_name, '::')
-- 		let path_part = join(splitted_pattern, '/')
-- 	  let last_part = splitted_pattern[-1]
--
-- 	  let result = taglist(last_part)
-- 		call filter(result, $"v:val[\"filename\"] =~ \"{path_part}\"")
--
-- 	  return result
-- 	endfunc
-- 	set tagfunc=TagFunc1
-- ]])
