# TODO

Visit page and setup multiple key rings for ssh:
https://pratapsharma.io/github-miltiple-key

## Mapping for git status, and vertical previewing strategy

## See how to pass starting query search term to prompt

## Set some keybindings for Telescope prompt
Right now I have to use arrows, which is rather inconvenient.

## Yank file path for selected entry in telescope

From page [https://github.com/nvim-telescope/telescope-file-browser.nvim/issues/328]
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

