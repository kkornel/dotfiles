require('bufferline').setup({
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#181825',
      bg = '#181825',
    },
    separator_selected = {
      fg = '#181825',
    },
    background = {
      fg = '#cdd6f4',
      bg = '#181825'
    },
    buffer_selected = {
      fg = '#f5e0dc',
      bg = '#1e1e2e',
      bold = true,
    },
    fill = {
      bg = '#181825'
    }
  },
})
