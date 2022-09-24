local prettier = require('prettier')

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'graphql',
    'html',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'scss',
    'less',
    'markdown',
    'yaml',
  },
}
