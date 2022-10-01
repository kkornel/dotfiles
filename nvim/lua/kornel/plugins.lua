local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[ packadd packer.nvim ]]

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'virchau13/tree-sitter-astro'
  use 'wuelnerdotexe/vim-astro'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp' -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim' -- manage external editor tooling (LSP)
  use 'williamboman/mason-lspconfig.nvim' -- closes some gaps that exist between mason.nvim and lspconfig
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  -- Formatters
  use 'MunifTanjim/prettier.nvim'
  -- use 'dense-analysis/ale'

  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use 'tpope/vim-surround'

  -- It requires brew install rg
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  -- use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-tree.lua'

  -- Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'p00f/nvim-ts-rainbow'
  -- use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/trouble.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'folke/lsp-colors.nvim'
  use 'norcalli/nvim-colorizer.lua'
  -- use 'andymass/vim-matchup'

  -- Git
  use 'dinhhuy258/git.nvim' -- vim-fugitive written in Lua
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
