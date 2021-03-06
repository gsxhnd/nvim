local map = vim.api.nvim_set_keymap
local wk = require("which-key")
local opt = {
    noremap = true,
    silent = true,
}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

wk.register({
  ["<Tab>"] = {"<C-W>w","Shift Window"},
  f = {
    name = "File", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    t = {":NvimTreeToggle<CR>", "Toggle File Tree"},
    n = { "New File" }, -- just a label. don't create any mapping
  },
  b = {
    name = "Buffer",
    h = { ":bp<CR>","Previous Buffer" },
    l = { ":bn<CR>","Next Buffer" },
  },
  w = {
    name = "Window",
    c = { ":close<CR>", "Close Window" },
    n = {"<C-W>w","Shift Window" },
  },
  l = { 
    name = "language",
    o = {":SymbolsOutline<CR>", "Outline"},
  }
},
{ prefix = "<leader>" })

-- 关闭方向键
map("", "<Up>", "<NOP>", opt)
map("", "<Down>", "<NOP>", opt)
map("", "<Right>", "<NOP>", opt)
map("", "<Left>", "<NOP>", opt)

-- buffer keymap
map("n", "<C-h>", ":bp<CR>", opt)
map("n", "<C-l>", ":bn<CR>", opt)
map("n", "<C-j>", ":m +1<CR>", opt)
map("n", "<C-k>", ":m -2<CR>", opt)
map("v", "<C-j>", ":m '>+1<CR>gv", opt)
map("v", "<C-k>", ":m '<-2<CR>gv", opt)
-- map("n", "<leader>bh", ":bp<CR>", opt)
-- map("n", "<leader>bl", ":bn<CR>", opt)
-- map("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opt)
-- map("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opt)
-- map("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opt)
-- map("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opt)
-- map("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opt)
-- map("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opt)


-- file keymap
-- map('n', '<leader>ft', ":NvimTreeToggle<CR>", opt)
-- map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
-- map("n","<leader>fo",":SymbolsOutline<CR>", opt)
-- window keymap
-- map("n", "<leader>wn", "<C-W>w", opt)
-- map("n", "<leader>wc", ":close<CR>", opt)
-- map("n", "<leader><Tab>", "<C-W>w", opt)


local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
    -- rename
    mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
    mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
    mapbuf('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
    mapbuf('n', '<leader>lh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
    mapbuf('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
    mapbuf('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
    mapbuf('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
    -- diagnostic
    mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
    mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
    mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
    -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    mapbuf('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)

    -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
    -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

pluginKeys.cmp = function(cmp)
    return {
      ['<s-Tab>'] = cmp.mapping.select_prev_item(),
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<A-,>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({
        select = true ,
        behavior = cmp.ConfirmBehavior.Replace
      }),
      -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    }
end

return pluginKeys
