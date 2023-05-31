local null_ls = require'null-ls'
local augroup_format = vim.api.nvim_create_augroup('Format', { clear = true })
local formatting = null_ls.builtins.formatting

null_ls.setup {
  sources = {
    -- formatting.prettierd,
    formatting.prettier,
    -- formatting.eslint,
    -- formatting.lua_format.with({
    -- extra_args = {
    --  '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
    --  '--break-after-table-lb', '--indent-width=2'
    --  }
    -- }),
    -- formatting.isort,
    -- formatting.codespell.with({ filetypes = { 'markdown' } })
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = 0,
        callback = function() vim.lsp.buf.formatting_seq_sync() end
      })
    end
  end,
}
