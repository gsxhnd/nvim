local gps = require("nvim-gps")

require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'nord',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {},
      always_divide_middle = true,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
          'branch', 
          'diff', 
          {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
            }
          },
      lualine_c = {"filename",{ gps.get_location, cond = gps.is_available }},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                mode = 2,
            }
        },
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    },
    extensions = {"nvim-tree"}
  }