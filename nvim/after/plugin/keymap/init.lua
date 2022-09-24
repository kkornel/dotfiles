local Remap = require('kornel.keymap')
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap

nnoremap('<leader>pv', ':Vex<CR>')
nnoremap('<leader>pe', ':Ex<CR>')

-- Fast jumping
nnoremap('J', '5j')
nnoremap('K', '5k')

-- Greates remap ever
xnoremap('<leader>p', '\"dP')

nnoremap('<leader>d', '\"_d')
vnoremap('<leader>d', '\"_d')

nnoremap('Y', 'yg$')

-- nnoremap('<leader>f', function()
--     vim.lsp.buf.format()
-- end)

-- Select all
nnoremap('<leader>A', 'gg<S-v>G')

-- New tab
nnoremap('te', ':tabedit')

-- Split window
nnoremap('ss', ':split<Return><C-w>w')
nnoremap('sv', ':vsplit<Return><C-w>w')

-- Move window
nnoremap('sh', '<C-w>h')
nnoremap('sk', '<C-w>k')
nnoremap('sj', '<C-w>j')
nnoremap('sl', '<C-w>l')

-- Resize window
nnoremap('<C-w><left>', '<C-w><')
nnoremap('<C-w><right>', '<C-w>>')
nnoremap('<C-w><up>', '<C-w>+')
nnoremap('<C-w><down>', '<C-w>-')

-- Yank text and send it to the clipboard
vnoremap('<leader>y', '"+y')
nnoremap('<leader>y', '"+y')

-- Indent code
vnoremap('<', '<gv')
vnoremap('>', '>gv')

-- Move selected text across file and autoindent
vnoremap('J', ':m \'>+1<CR>gv=gv')
vnoremap('K', ':m \'<-2<CR>gv=gv')

-- Make current file executable
nnoremap('<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

nnoremap('<leader>e', ':NvimTreeToggle<CR>')
-- nnoremap('<leader>q', ':NvimTreeFocus<CR>')

nnoremap('<Tab>', ':BufferLineCycleNext<CR>')
nnoremap('<S-Tab>', ':BufferLineCyclePrev<CR>')

nnoremap('<leader>q', ':q<CR>')
nnoremap('<leader>Q', ':q!<CR>')

-- lspsaga
-- <C-t> to jump back
nnoremap('gh', '<cmd>Lspsaga lsp_finder<CR>')
nnoremap('<leader>ca', '<cmd>Lspsaga code_action<CR>')
nnoremap('gr', '<cmd>Lspsaga rename<CR>')
-- <C-t> to jump back
nnoremap('gd', '<cmd>Lspsaga peek_definition<CR>')
nnoremap('gp', '<cmd>Lspsaga preview_definition<CR>')
nnoremap('<leader>cd', '<cmd>Lspsaga show_line_diagnosctics<CR>')
nnoremap('<leader>k', '<cmd>Lspsaga hover_doc<CR>')
nnoremap('<leader>lt', '<cmd>vim.lsp.buf.type_definition()<cr>')
nnoremap('<leader>lr', '<cmd>vim.lsp.buf.references()<cr>')
-- Diagnsotic jump can use `<c-o>` to jump back
nnoremap("[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
nnoremap("]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- -- Only jump to error
-- keymap("n", "[E", function()
--   require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
-- end, { silent = true })
-- keymap("n", "]E", function()
--   require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
-- end, { silent = true })
