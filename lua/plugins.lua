return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- nord theme
    use 'shaunsingh/nord.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- use {
    --   'akinsho/bufferline.nvim', 
    --   requires = 'kyazdani42/nvim-web-devicons'
    -- }
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate' 
    }
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
          'nvim-lua/plenary.nvim'
        }
    }
    use "Pocco81/AutoSave.nvim"
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- -- vsnip
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- use 'rafamadriz/friendly-snippets'
    -- -- lspkind
    use 'onsails/lspkind-nvim'
end)

