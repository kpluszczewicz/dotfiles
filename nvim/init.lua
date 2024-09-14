-- Set of common options, based on kickstart project
require("vim-options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

--  INFO: About loading plugins, especially `opts = {}`
--  Plugins can also be added by using a table,
--  with the first argument being the link and the following
--  keys can be used to configure plugin behavior/loading/etc.
--
-- Use `opts = {}` to force a plugin to be loaded.
--
--  This is equivalent to:
--    require('Comment').setup({})
-- ie:
-- "gc" to comment visual regions/lines
-- { 'numToStr/Comment.nvim', opts = {} },

-- Themery plugin saves to lua/theme.lua selected colorscheme
require("theme")

require("mappings")

require("autocommands")

require("filetype-features")

require("user-commands")

-- on key <leader>kt search koleo tables
require("telescope_koleo_db_tables")

require("telescope_koleo_factories")

-- vimplug
-- For integration vim-plug and Nvim see https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
local Plug = vim.fn["plug#"]
vim.call("plug#begin")

Plug("kylef/apiblueprint.vim")
Plug("lervag/file-line")
-- rest of plugins here...

vim.call("plug#end")
