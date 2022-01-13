local lsp_installer = require "nvim-lsp-installer"

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
    gopls = require "lsp.go",
    clangd = require "lsp.clangd",
    pyright = require "lsp.python"
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  else
    print("No server found")
  end
end

lsp_installer.on_server_ready(function(server)
  local opts = servers[server.name]
  print("Server " .. server.name)
  if opts then
    opts.on_attach = function(_, bufnr)
      print("Attaching " .. server.name .. "")
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      -- 绑定快捷键
      require('keybindings').maplsp(buf_set_keymap)
  end
  opts.flags = {
      debounce_text_changes = 150,
  }
  end
  print("setup")
  server:setup(opts)
end)