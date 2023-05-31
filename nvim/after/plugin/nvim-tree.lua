vim.g.nvim_tree_width = 25

require 'nvim-tree'.setup {
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        bookmark = '',
        folder = {
          arrow_closed = '',
          arrow_open = '',
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
        git = {
          unstaged = '✗',
          staged = '✓',
          unmerged = '',
          renamed = '➜',
          untracked = '★',
          deleted = '',
          ignored = '◌',
        },
      },
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      }
    },
    hide_root_folder = true,
  },
  actions = {
    open_file = {
      window_picker = {
        exclude = {
          filetype = { 'notify', 'packer', 'qf', 'diff', 'fugitive', 'fugitiveblame' },
          buftype = { 'nofile', 'terminal', 'help' },
        },
      },
    },
  },
  filters = {
    exclude = {'.git', 'node_modules', '.cache'},
  },
  update_focused_file = { enable = true },
  hijack_directories = { enable = true },
  open_on_setup = true,
}
