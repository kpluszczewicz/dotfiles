return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			{
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
					cond = function()
						return vim.fn.executable("make") == 1
					end,
				},
			},
			{
				"nvim-telescope/telescope-live-grep-args.nvim",
				-- This will not install any breaking changes.
				-- For major updates, this must be adjusted manually.
				version = "^1.0.0",
			},
		},
		extensions = {
			-- Fuzzy finder jako sorter potrzebny do wyszukiwania np kilku slow
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			},
			-- heading = {
			--   treesitter = true
			-- }
		},
		config = function()
			-- Telescope is a fuzzy finder that comes with a lot of different things that
			-- it can fuzzy find! It's more than just a "file finder", it can search
			-- many different aspects of Neovim, your workspace, LSP, and more!
			--
			-- The easiest way to use telescope, is to start by doing something like:
			--  :Telescope help_tags
			--
			-- After running this command, a window will open up and you're able to
			-- type in the prompt window. You'll see a list of help_tags options and
			-- a corresponding preview of the help.
			--
			-- Two important keymaps to use while in telescope are:
			--  - Insert mode: <c-/>
			--  - Normal mode: ?
			--
			-- This opens a window that shows you all of the keymaps for the current
			-- telescope picker. This is really useful to discover what Telescope can
			-- do as well as how to actually do it!

			-- [[ Configure Telescope ]]
			-- See `:help telescope` and `:help telescope.setup()`
			require("telescope").setup({
				--
				-- You can put your default mappings / updates / etc. in here
				--  All the info you're looking for is in `:help telescope.setup()`
				--
				-- defaults = {
				--   mappings = {
				--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
				--   },
				-- },
				pickers = {
					buffers = {
						show_all_buffers = true,
						sort_lastused = true,
						mappings = {
							i = {
								["<c-d>"] = "delete_buffer",
							},
						},
					},
					colorscheme = {
						enable_preview = true,
						mappings = {
							i = {
								["<Return>"] = function()
									local theme_name = require("telescope.actions.state").get_selected_entry()[1]
									print(
										'You have selected "'
											.. require("telescope.actions.state").get_selected_entry()[1]
											.. '"'
									)

									local outfile = io.open(os.getenv("HOME") .. "/.config/nvim/lua/theme.lua", "w")
									local text = ' vim.cmd("colorscheme ' .. theme_name .. '"); vim.g.theme_id = 1'
									outfile:write(text)
									outfile:close()
									require("telescope.actions").select_default()
								end,
							},
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			-- Enable telescope extensions, if they are installed
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")
			pcall(require("telescope").load_extension, "live_grep_args")

			-- See `:help telescope.builtin`
			local builtin = require("telescope.builtin")
			local extensions = require("telescope").extensions
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>sg", extensions.live_grep_args.live_grep_args, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>sy", builtin.treesitter, { desc = "[S]earch [Y]reesitter" })
			vim.keymap.set("n", "<leader>st", builtin.tags, { desc = "[S]earch [T]ags" })
			vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>sc", builtin.command_history, { desc = "[S]earch [C]ommand line" })

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- Also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
		end,
	},
	{
		"crispgm/telescope-heading.nvim",
		config = function()
			require("telescope").load_extension("heading")
		end,
	},
	{
		"sato-s/telescope-rails.nvim",
		config = function()
			local wk = require("which-key")
			require("telescope").load_extension("rails")

			local telescope = require("telescope.builtin")
			local rails_find = function(title, dirs)
				return function()
					require("telescope.builtin").find_files({ prompt_title = title, search_dirs = dirs })
				end
			end

			wk.add({
				{ "<leader>r", group = "[R]ails files browsing" },

				{ "<leader>rt", rails_find("Search tests", { "spec/" }), desc = "[T]ests - Specs" },
				{
					"<leader>rc",
					rails_find("Search controllers", { "app/controllers", "app/api/api/" }),
					desc = "[C]ontrollers",
				},
				{ "<leader>rm", rails_find("Search models...", { "app/models/" }), desc = "[M]odels" },
				{ "<leader>rv", rails_find("Search views...", { "app/views" }), desc = "[V]iews" },
				{ "<leader>ri", rails_find("Search migrations...", { "db/migrate" }), desc = "M[i]grations" },
				{ "<leader>rj", rails_find("Search jobs...", { "app/jobs/" }), desc = "[J]obs" },
				{
					"<leader>rl",
					function()
						telescope.find_files({
							prompt_title = "Search locales...",
							cwd = "config/locales",
							search_file = "yml",
						})
					end,
					desc = "[L]ocales",
				},
			})
		end,
	},
}
