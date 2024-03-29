return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- theme
    use 'shaunsingh/nord.nvim'
    -- layout plugin
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }
    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
    use 'simrat39/symbols-outline.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter"
    }
    -- key mapping
    use 'folke/which-key.nvim'
    -- svn plugin
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use "Pocco81/AutoSave.nvim"

    -- lsp plugin
    -- use {
    --     'neovim/nvim-lspconfig',
    --     'williamboman/nvim-lsp-installer',
    -- }
    -- nvim-cmp vsnip
    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-cmdline'
    -- use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-vsnip'
    -- use 'hrsh7th/vim-vsnip'
    -- use 'onsails/lspkind-nvim'
    -- use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
    -- golang
    -- use 'fatih/vim-go'
end)
