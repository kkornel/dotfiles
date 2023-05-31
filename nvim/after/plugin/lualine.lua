require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = '|',
    section_separators = {},
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { 'filename' },
    lualine_x = { 'filetype' },
    -- lualine_y = {'progress', 'location'},
    lualine_y = { 'location' },
    lualine_z = { 'os.date(\'%H:%M\')' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  extensions = { 'fugitive' }
}
