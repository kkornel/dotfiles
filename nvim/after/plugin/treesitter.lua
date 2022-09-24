require'nvim-treesitter.configs'.setup {
  ensure_installed = 'all',
  auto_install = true,
  ignore_install = {'phpdoc'},
  indent = {
    enable = true,
    disable = {},
  },
  highlight = {
    enable = true,
    disable = {},
  },
  rainbow = {
    enable = true,
    -- disable = { 'jsx', 'cpp' }, list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
