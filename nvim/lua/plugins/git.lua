return {
    -- A git blame plugin for Neovim written in Lua
    'f-person/git-blame.nvim',
    opts = {
	enabled = false,
	date_format = "%c",
	message_template = "  <author> • <date> • <summary>",
	message_when_not_committed = "  Not Committed Yet",
	highlight_group = "Comment",
	set_extmark_options = {},
	display_virtual_text = true,
	ignored_filetypes = {},
	delay = 250,
	virtual_text_column = nil,
	use_blame_commit_file_urls = false,
	-- schedule_event = "CursorMoved",
	schedule_event = "CursorHold",
	clear_event = "CursorHoldI",
    }
}
