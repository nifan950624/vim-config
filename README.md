# vim-config

## 使用方法

首先查看用户目录是否有.vim 的文件夹，如果有请删除

```
rm -rf .vim
```

## 然后执行:

```
git clone https://github.com/nifan950624/vim-config.git ~/.vim/
```

## 随后删除:

```
rm ~/.vimrc
```

## 接着:

```
ln -s ~/.vim/.vimrc ~/.vimrc
```

到这里我们的 **vim** 配置就完成了。

**vim** 插件管理系统使用 **vim-plug** 安装插件更简单，请认真查看[文档](https://github.com/junegunn/vim-plug)

> 快捷键请看 `.vimrc` 文件
