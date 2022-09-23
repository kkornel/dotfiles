-- It's important that you set up the plugins in the following order:
--  1. mason.nvim
--  2. mason-lspconfig.nvim
--  3. lspconfig

local langservers = {
  'html',
  'cssls',
  'astro',
  'tsserver',
  'ls_emmet',
  'cssmodules_ls',
  'eslint',
  'jsonls',
  'prismals',
  'sumneko_lua',
  'tailwindcss',
}

require 'mason'.setup()

require 'mason-lspconfig'.setup {
  ensure_installed = langservers,
}

-- Set up lspconfig.
local capabilities = require 'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

-- Emmet
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not configs.ls_emmet then
  configs.ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {
        'html',
        'css',
        'scss',
        'javascriptreact',
        'typescriptreact',
        'haml',
        'xml',
        'xsl',
        'pug',
        'slim',
        'sass',
        'stylus',
        'less',
        'sss',
        'hbs',
        'handlebars',
      };
      root_dir = function(_)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end


local on_attach = function(client, bufnr)
  client.server_capabilities.document_formatting = false -- 0.7 and earlier
  -- if client.server_capabilities.documentFormattingProvider then
  --   vim.api.nvim_command [[augroup Format]]
  --   vim.api.nvim_command [[autocmd! * <buffer>]]
  --   vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting.seq_sync()]]
  --   vim.api.nvim_command [[augroup END]]
  -- end
end

for _, server in ipairs(langservers) do
  if server == 'tsserver' then
    lspconfig[server].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { 'typescript', 'typescriptreact', 'typescript.txs' },
      cmd = { 'typescript-language-server', '--stdio' }
    }
  elseif server == 'sumneko_lua' then
    lspconfig.sumneko_lua.setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
  else
    lspconfig[server].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end
end
