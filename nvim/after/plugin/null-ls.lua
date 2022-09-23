local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

null_ls.setup {
  sources = {
    formatting.prettierd,
    formatting.prettier,
    formatting.eslint,
    formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }),
    formatting.isort,
    formatting.codespell.with({ filetypes = { 'markdown' } })
  },
  on_attach = function(client)
    -- if client.resolved_capabilities.document_formatting then
    --   vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()')
    -- end
    -- Craft
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
    -- Prettier
    -- if client.server_capabilities.documentFormattingProvider then
    --   vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")
    --   -- format on save
    --   vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    -- end
    -- if client.server_capabilities.documentRangeFormattingProvider then
    --   vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    -- end
    vim.cmd [[
      augroup document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
  end
}
