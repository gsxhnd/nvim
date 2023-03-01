require'nvim-tree'.setup {}


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