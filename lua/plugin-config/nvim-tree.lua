require'nvim-tree'.setup {
    -- 关闭文件时自动关闭
    auto_close = true,
    -- 不显示 git 状态图标
    git = {
        enable = false
    }
}


local view = require'nvim-tree.view'

local _M = {}
_M.toggle_tree = function()
    print(view.win_open())
    if view.win_open() then
        require'nvim-tree'.close()
        require'bufferline.state'.set_offset(0)
    else
        require'bufferline.state'.set_offset(30, 'File Explorer')
        require'nvim-tree'.open()
    end
end

return _M