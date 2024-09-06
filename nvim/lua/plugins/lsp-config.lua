return {
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{ "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			-- lspconfig.solargraph.setup({
			--   capabilities = capabilities,
			--   -- PLUGIN / neovim native lsp / ruby / solargraph
			--   -- cmd = { os.getenv( "HOME" ) .. "/.rvm/shims/solargraph", 'stdio' },
			--   cmd = { "solargraph", "stdio" },
			--   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
			--   settings = {
			--     solargraph = {
			--       autoformat = false,
			--       formatting = false,
			--       completion = true,
			--       diagnostic = true,
			--       folding = true,
			--       references = true,
			--       rename = true,
			--       symbols = true,
			--     },
			--   },
			-- })
			-- lspconfig.ruby_ls.setup({
			--   capabilities = capabilities,
			--   on_attach = function(client, buffer)
			--     setup_diagnostics(client, buffer)
			--   end,
			-- })

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			-- neovim 0.10 sets below as default
			-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

			local wk = require("which-key")

			wk.add({
				{
					"<leader>e",
					function()
						vim.diagnostic.open_float()
					end,
					desc = "Show diagnostics in float window",
				},
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					-- rubocop: Don't install rubocop here for the sake of rails extension,
					-- that can't be easily installed via Mason. I installed them
					-- via project Gemfile
					-- "ruby_ls",
					"cssls",
				},
			})
		end,
	},
}
