-- Catppuccin colors
local function catppucin_it()
  local mocha = require("catppuccin.palettes").get_palette()
  local cnf = require("catppuccin.config").options

  local transparent_background = cnf.transparent_background
  local active_bg = transparent_background and "NONE" or mocha.base
  local inactive_bg = transparent_background and "NONE" or mocha.mantle
  local bg_highlight = (transparent_background and cnf.dim_inactive.enabled and mocha.dim)
      or (transparent_background and "NONE")
      or (cnf.dim_inactive.enabled and mocha.dim)
      or mocha.crust

  local styles = { "bold", "italic" }

  local highlights = {
    -- buffers
    background = { bg = inactive_bg },
    buffer_visible = { fg = mocha.surface1, bg = inactive_bg },
    buffer_selected = { fg = mocha.text, bg = active_bg, style = styles }, -- current
    -- Duplicate
    duplicate_selected = { fg = mocha.text, bg = active_bg, style = styles },
    duplicate_visible = { fg = mocha.surface1, bg = inactive_bg, style = styles },
    duplicate = { fg = mocha.surface1, bg = inactive_bg, style = styles },
    -- tabs
    tab = { fg = mocha.surface1, bg = inactive_bg },
    tab_selected = { fg = mocha.sky, bg = active_bg },
    tab_close = { fg = mocha.red, bg = inactive_bg },
    indicator_selected = { fg = mocha.peach, bg = active_bg, style = styles },
    -- separators
    separator = { fg = mocha.crust, bg = inactive_bg },
    separator_visible = { fg = mocha.crust, bg = inactive_bg },
    separator_selected = { fg = mocha.crust, bg = active_bg },
    -- close buttons
    close_button = { fg = mocha.surface1, bg = inactive_bg },
    close_button_visible = { fg = mocha.surface1, bg = inactive_bg },
    close_button_selected = { fg = mocha.red, bg = active_bg },
    -- Empty fill
    fill = { bg = bg_highlight },
    -- Numbers
    numbers = { fg = mocha.subtext0, bg = inactive_bg },
    numbers_visible = { fg = mocha.subtext0, bg = inactive_bg },
    numbers_selected = { fg = mocha.subtext0, bg = active_bg, style = styles },
    -- Errors
    error = { fg = mocha.red, bg = inactive_bg },
    error_visible = { fg = mocha.red, bg = inactive_bg },
    error_selected = { fg = mocha.red, bg = active_bg, style = styles },
    error_diagnostic = { fg = mocha.red, bg = inactive_bg },
    error_diagnostic_visible = { fg = mocha.red, bg = inactive_bg },
    error_diagnostic_selected = { fg = mocha.red, bg = active_bg },
    -- Warnings
    warning = { fg = mocha.peach, bg = inactive_bg },
    warning_visible = { fg = mocha.peach, bg = inactive_bg },
    warning_selected = { fg = mocha.peach, bg = active_bg, style = styles },
    warning_diagnostic = { fg = mocha.peach, bg = inactive_bg },
    warning_diagnostic_visible = { fg = mocha.peach, bg = inactive_bg },
    warning_diagnostic_selected = { fg = mocha.peach, bg = active_bg },
    -- Infos
    info = { fg = mocha.teal, bg = inactive_bg },
    info_visible = { fg = mocha.teal, bg = inactive_bg },
    info_selected = { fg = mocha.teal, bg = active_bg, style = styles },
    info_diagnostic = { fg = mocha.teal, bg = inactive_bg },
    info_diagnostic_visible = { fg = mocha.teal, bg = inactive_bg },
    info_diagnostic_selected = { fg = mocha.teal, bg = active_bg },
    -- Hint
    hint = { fg = mocha.sapphire, bg = inactive_bg },
    hint_visible = { fg = mocha.sapphire, bg = inactive_bg },
    hint_selected = { fg = mocha.sapphire, bg = active_bg, style = styles },
    hint_diagnostic = { fg = mocha.sapphire, bg = inactive_bg },
    hint_diagnostic_visible = { fg = mocha.sapphire, bg = inactive_bg },
    hint_diagnostic_selected = { fg = mocha.sapphire, bg = active_bg },
    -- Diagnostics
    diagnostic = { fg = mocha.subtext0, bg = inactive_bg },
    diagnostic_visible = { fg = mocha.subtext0, bg = inactive_bg },
    diagnostic_selected = { fg = mocha.subtext0, bg = active_bg, style = styles },
    -- Modified
    modified = { fg = mocha.peach, bg = inactive_bg },
    modified_selected = { fg = mocha.peach, bg = active_bg },
  }

  local user_highlights = {}
  highlights = vim.tbl_deep_extend(
    "keep",
    user_highlights[vim.g.catppuccin_flavour] or {},
    user_highlights.all or {},
    highlights
  )

  for _, color in pairs(highlights) do
    if color.style then
      for _, style in ipairs(color.style) do
        color[style] = true
      end
    end
    color.style = nil
  end

  return highlights
end

require('bufferline').setup({
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = catppucin_it()
})
