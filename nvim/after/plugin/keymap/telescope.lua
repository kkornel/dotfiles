local Remap = require('kornel.keymap')
local nnoremap = Remap.nnoremap
local telescope = require('telescope')
local builtin = require('telescope.builtin')

nnoremap('<C-p>', ':Telescope')

nnoremap('<C-p>', function()
  builtin.find_files()
end)

nnoremap('<leader>ps', function()
  builtin.live_grep()
end)

nnoremap('<leader>pf', function()
  builtin.grep_string({ search = vim.fn.input("Grep For > ")})
end)

nnoremap("<leader>pb", function()
  builtin.buffers()
end)

nnoremap(';f', function()
  builtin.find_files()
end)

nnoremap(';r', function()
  builtin.live_grep()
end)

nnoremap('sf', ':Telescope file_browser<CR>')

-- local function telescope_buffer_dir()
  -- return vim.fn.expand('%:p:h')
-- end
-- 
nnoremap('af', function()
  telescope.extensions.file_browser.file_browser({
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
