local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local ns = vim.api.nvim_create_namespace("")

local my_previewer = function()
	local jump_to_line = function(self, bufnr, entry)
		vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)
		vim.api.nvim_buf_add_highlight(bufnr, ns, "TelescopePreviewLine", entry.lnum - 1, 0, -1)
		vim.api.nvim_win_set_cursor(self.state.winid, { entry.lnum, 0 })
		vim.api.nvim_buf_call(bufnr, function()
			vim.opt_local.scrolloff = 0
			vim.cmd("norm! zt")
		end)
	end
	return previewers.new_buffer_previewer({
		title = "spec/factories.rb",
		get_buffer_by_name = function(self, entry)
			return entry.path
		end,
		define_preview = function(self, entry)
			local p = entry.path
			return conf.buffer_previewer_maker(p, self.state.bufnr, {
				bufname = self.state.bufname,
				winid = self.state.winid,
				callback = function(bufnr)
					jump_to_line(self, bufnr, entry)
				end,
			})
		end,
	})
end

local lines_with_numbers = {}
local path = "/Users/kamilpluszczewicz/koleo/spec/factories.rb"
local i = 1
local matching_lines = 0
for line in io.lines(path) do
	local _, _, factory_name = string.find(line, "factory :([a-zA-Z_]*),?")

	if factory_name then
		table.insert(lines_with_numbers, { lnum = i, factory_name = factory_name, path = path })
		matching_lines = matching_lines + 1
	end
	i = i + 1
end

local koleo_factories_picker = function(opts)
	opts = opts or {}
	pickers
		.new(opts, {
			prompt_title = "Koleo test factories",
			finder = finders.new_table({
				results = lines_with_numbers,
				entry_maker = function(entry)
					return {
						value = entry,
						display = entry.factory_name,
						ordinal = entry.factory_name,
						lnum = entry.lnum,
						path = entry.path,
					}
				end,
			}),
			sorter = conf.generic_sorter(opts),
			previewer = my_previewer(),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					-- print(vim.inspect(selection))
					-- vim.api.nvim_put({ selection[1] }, "", false, true)
					print(selection.display)
					-- grep -E -n '(CREATE TABLE)|(^\);$)' db/structure.sql | grep users -A 1 | awk -F ':' '{print $1}'
					-- it will output line numbers with table header and closing bracket:
					-- 9321
					-- 9369
					print("TODO: Fire next telescope on selected table fields")
					-- TODO: fire next picker on selected table's fields.
				end)
				return true
			end,
		})
		:find()
end

vim.keymap.set("n", "<leader>kf", koleo_factories_picker, { desc = "[K]oleo [f]actories" })
