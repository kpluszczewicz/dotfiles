# TODO

[ ] - map visual selection to :%s/{visual_selection}/{cursor_here}/g
[ ] - map <C-p> and <C-n> in command line to browse command history, not completions.
[ ] - allow to open particular file with colon and line (either from shell and in nvim)
    Ie.: vim index.html:20
         vim app/models/user.rb:1337
    This plugin lervag/file-line.git unfortunately doesn't work.
    It would be nice to have it in lua:
    Rewrite to lua git@github.com:lervag/file-line.git.
    

```lua
require("telescope").setup({
    -- .. other settings
    extensions = {
        file_browser = {
            -- hijack_netrw = true,
            theme = "ivy",
            mappings = {
                i = {
                    ["<C-y>"] = function()
                        local entry = require("telescope.actions.state").get_selected_entry()
                        local cb_opts = vim.opt.clipboard:get()
                        if vim.tbl_contains(cb_opts, "unnamed") then vim.fn.setreg("*", entry.path) end
                        if vim.tbl_contains(cb_opts, "unnamedplus") then
                            vim.fn.setreg("+", entry.path)
                        end
                        vim.fn.setreg("", entry.path)
                    end,
                },
            },
        },
    },
})
```
# Done
## Rails project searching
It would be nice to have test searching,
and command that searches tests matching current file, maybe in prompt with pasted filename
as a starting point.

```lua
-- remember to exclude test dir from .rgignore.
lua require('telescope.builtin').find_files({ prompt_title = "Search tests...", cwd = "~/koleo/test" })
```

