local status = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip' -- VSCode(LSP)'s snippet feature in vim.
  use 'hrsh7th/vim-vsnip-integ'

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim' -- manage external editor tooling (LSP)
  use 'williamboman/mason-lspconfig.nvim' -- closes some gaps that exist between mason.nvim and lspconfig
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  -- Formatters
  use 'MunifTanjim/prettier.nvim'
  use 'dense-analysis/ale' -- Asynchronous Lint Engine

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }

  use 'terrortylor/nvim-comment'
  use 'tpope/vim-surround'

  -- It requires brew install rg
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'kyazdani42/nvim-tree.lua'

  -- Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'p00f/nvim-ts-rainbow'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/trouble.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'folke/lsp-colors.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use 'dinhhuy258/git.nvim'     -- vim-fugitive written in Lua
  use 'lewis6991/gitsigns.nvim' -- git decorations

  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  })

  use 'kyazdani42/nvim-web-devicons'

  -- Color themes
  use 'folke/tokyonight.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
end)
