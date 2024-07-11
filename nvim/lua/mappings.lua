-- Add <count>j|k motion to jumplist
-- TODO: to nie jest doskonałe rozwiązanie,
vim.cmd([[nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k']])
vim.cmd([[nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j']])

-- [[ Miscelanous ]]

-- Adding empty lines above and below cursor in normal mode
--  Chars '∆' and 'Ż' are generated pressing <Option-j> and <Option-k>. It's simple and nice workaround.
vim.keymap.set("n", "∆", ':call append(line("."), "")<CR>', { desc = "Add empty line below" })
vim.keymap.set("n", "Ż", ':call append(line(".")-1, "")<CR>', { desc = "Add empty line above" })

-- Jump over one character in insert mode, ie to skip automatically added parenthesis
vim.keymap.set("i", "<C-Bslash>", "<Right>", { desc = "Jump one character right in insert mode" })

-- [[ <S-Enter> opens new line wherever cursor is and jumps there ]]
vim.keymap.set("i", "<S-Enter>", "<C-O>o")
-- this hack is for alacritty - shit-enter is recognized as <CTRL-j>, we map it to '‚'
-- end then to <C-O>o
vim.keymap.set("i", "‚", "<C-O>o")

-- Go to end of the line in insert mode
vim.keymap.set("i", "<C-;>", "<C-o>$")
vim.keymap.set("i", "…", "<C-o>$") -- fallback for alacritty
-- [[ Terminal mode ]]

-- NOTE This won't work in all terminal emulators/tmux/etc. Try your own mapping
--  or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- [[ Keybindings to make split navigation easier ]]
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd for a list of all window commands`
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<D-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<D-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<D-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<D-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
-- [[ Diagnostics ]]
--
-- NOTE: Below commented 2024-07-04 as this is default in Nvim 0.10
-- Navigate diagnostic messages
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Show diagnostics
-- NOTE: Since Nvim 0.10 this is also rechable via <C-W>d
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- [[ Tab navigation ]]
vim.keymap.set({ "n", "i" }, "Ń", "1gt")
vim.keymap.set({ "n", "i" }, "™", "2gt")
vim.keymap.set({ "n", "i" }, "€", "3gt")
vim.keymap.set({ "n", "i" }, "ß", "4gt")
vim.keymap.set({ "n", "i" }, "į", "5gt")

-- [[ Shift-space to omit one character in insert mode]]
-- NOTE: This one must be firt set in terminal config - see alacrity.toml
-- -> { key = "Space", mods = "Shift", chars = "Ō" }
vim.keymap.set({ "i" }, "Ō", "<Right>")

vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

vim.keymap.set("x", "<C-j>", "<Down>", { desc = "Browse command history forward" })
vim.keymap.set("x", "<C-k>", "<Up>", { desc = "Browse command history backward" })

vim.keymap.set("c", "<M-b>", "<S-Left>", {})
-- vim.keymap.set("c", "<T-b>", "<S-Left>", {})
vim.keymap.set("c", "<M-f>", "<S-Right>", {})
vim.keymap.set("c", "<C-n>", "<Down>", {})
vim.keymap.set("c", "<C-p>", "<Up>", {})

-- browse jumplist with <Command>-] like in browser
-- vim.keymap.set("n", "<D-[>", "<C-o>", {})
-- vim.keymap.set("n", "<D-]>", "<C-i>", {})
