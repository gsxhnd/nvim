-- vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- indicator = {
        --     icon = '▎',
        --     style = 'icon' | 'underline' | 'none',
        -- },
        indicator = {icon = '▎'},
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false
    }
}