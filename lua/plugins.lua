return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- nord theme
    use 'shaunsingh/nord.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'akinsho/bufferline.nvim', 
      requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'francoiscabrol/ranger.vim',
        requires = {{'rbgrouleff/bclose.vim'}}
    }
    use { 
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate' 
    }
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'
end)

