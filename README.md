# `Neovim`配置教程

前提：

- `Neovim`
- 安装`font`目录下的字体
- `Terminal`工具,修改默认字体
- `git`命令
- `ranger`命令

如果你是`Windows`环境，推荐安装和使用`WSL2`。

## 下载配置

将本仓库克隆到 neovim 的配置目录`~/.config/`下

```shell
git clone https://github.com/gsxhnd/nvim.git ~/.config
```

## 安装包管理器

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## 修改插件配置

### nvim-treesitter

配置文件在`lua/plugin-config/nvim-treesitter.lua`

#### 代理设置

```lua
require("nvim-treesitter.install").command_extra_args = {
  curl = { "--proxy", "http://127.0.0.1:7890" },
}
```

可以将代理地址`"http://127.0.0.1:7890"`修改成自己使用的代理地址，或者直接删除/注释代码

#### 语言解析

`ensure_installed = {"go","python"}`

上边设置了确保安装`go`和`python`语言，可以根据你的情况修改和添加。

通过在`nvim`中 `:TSInstallInfo`命令查看支持的语言

## 安装插件

修改完插件配置，进入`nvim`，通过 `:PackerSync`, 安装插件。
