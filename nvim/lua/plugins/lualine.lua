return {
-- A blazing fast and easy to configure Neovim statusline written in Lua.
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        'diff',
        'diagnostics'
      },
      lualine_c = {
        {
          'filename',
          -- 0: Just the filename
          -- 1: Relative path
          -- 2: Absolute path
          -- 3: Absolute path, with tilde as the home directory
          -- 4: Filename and parent dir, with tilde as the home directory
          path = 1,
          shorting_target = 10
        }
      },
      -- lualine_c = { "vim.fn.expand('%:p')" },
      lualine_x = {'filetype'},
      lualine_y = {'progress'},
      lualine_z = {}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        {
          'filename',
          path = 1
        }
      },
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = {
        {
          function() if vim.g.Session_name then return vim.g.Session_name else return "" end end,
          color = 'lualine_a_terminal',
          draw_empty = true
        }
      },
      lualine_b = {
        {
          'tabs',
          mode = 2,
          max_length = vim.o.columns,
        }
      },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'branch' }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = { 'neo-tree', 'trouble' }
    -- when opts is set – it will automatically call
    -- require("lualine").setuop(opts)
  }
}
