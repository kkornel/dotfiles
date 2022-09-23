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
  -- ensure_installed = langservers,
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
  -- Formatting
  -- if client.name == "tsserver" then
  client.server_capabilities.document_formatting = false -- 0.7 and earlier
  client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
  -- end
  -- if client.server_capabilities.documentFormattingProvider then
  --   vim.api.nvim_command [[augroup Format]]
  --   vim.api.nvim_command [[autocmd! * <buffer>]]
  --   vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting.seq_sync()]]
  --   vim.api.nvim_command [[augroup END]]
  -- end
  -- -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- -- Mappings.
  -- -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- local bufopts = { noremap=true, silent=true, buffer=bufnr }
  -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  --- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

for _, server in ipairs(langservers) do
  if server == 'tsserver' then
    lspconfig[server].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = {'typescript', 'typescriptreact', 'typescript.txs'},
      cmd = {'typescript-language-server', '--stdio' }
    }
  elseif server == 'sumneko_lua' then
    lspconfig.sumneko_lua.setup {
      -- on_attach = on_attach,
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


