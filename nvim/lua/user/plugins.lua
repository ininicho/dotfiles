local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- use {'Mofiqul/dracula.nvim'}
  use {
    'folke/tokyonight.nvim',
    config = function ()
      require('user.plugins.tokyonight')
    end,
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require('user.plugins.nvim-tree')
    end,
  }

  use {
    'feline-nvim/feline.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require('user.plugins.feline')
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'kyazdani42/nvim-web-devicons' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    },
    config = function()
      require('user.plugins.telescope')
    end,
  }

  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require('user.plugins.luasnip')
    end,
  }

  use {
    'lervag/vimtex',
    requires = {
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('user.plugins.vimtex')
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'nvim-treesitter/playground',
      'nvim-treesitter/nvim-treesitter-textobjects',
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
      require('user.plugins.treesitter') -- TODO
    end,
  }

  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('user.plugins.bufferline')
    end,
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'jessarcher/cmp-path',
      'onsails/lspkind-nvim',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require('user.plugins.cmp')
    end,
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'RRethy/vim-illuminate',
    },
    config = function()
      require('user.lsp')
    end,
  }

  use {'moll/vim-bbye'}

  -- use {
  --   'folke/persistence',
  --   event = 'BufReadPre',
  --   module = 'persistence',
  --   config = function()
  --     require('user.plugins.persistence')
  --   end,
  -- }

  use {
    'folke/which-key.nvim',
    config = function()
      require('user.plugins.which-key')
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

