# sleek.nvim

A very simple based Neovim configuration that uses lsp and github copilot

- [What is this?](#what-is-this)
- [Plugins](#plugins)
- [Prerequisites](#prerequisites)
- [Setup](#setup-quicknvim)
  - [Download cofiguration](#1-download-configuration)
    - [Releases](#releases)
  - [Install plugins](#2-install-plugins)
    - [Install Packer](#install-packer)
- [Bindings](#bindings)

## What is this?

This is a configuration for Neovim. It's written in Lua, and uses modern
plugins like Treesitter, Telescope, and Lualine. It does however not implement
the native Neovim LSP. It's very fast, good looking, and has a lot of nice
features.


## Plugins

- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [Plenary](https://github.com/nvim-lua/plenary.nvim)
- [Surround](https://github.com/blackCauldron7/surround.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

## Prerequisites

- [Neovim 0.5 or above](https://neovim.io)
- [Node.js](https://nodejs.org)

## Setup sleek.nvim

### 1. Download configuration

#### Clone repository

If you want to receive updates as this configuration gets patched, then clone
this repository into your `.config` directory, or wherever you keep your
current Neovim configuration.

```sh
git clone git@github.com:edgardoa91/sleek.nvim.git ~/.config/nvim
```

#### Releases

On the other hand, if you want a raw folder with the configuration files,
without git connected to it, you can head over to the releases page, and
download a release from there.

https://github.com/edgardoa91/sleek.nvim/releases

### 2. Install plugins

#### Install Packer

quick.nvim uses [Packer](https://github.com/wbthomason/packer.nvim) as its
Neovim plugin manager.

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

To install the plugins used by sleek.nvim, you need to do so using Packer.

```
nvim ~/.config/nvim/init.lua
```

```
:PackerInstall
```

PS. If you're having trouble running `:PackerInstall` after this, please follow the instructions in this issue: https://github.com/albingroen/quick.nvim/issues/2


## Bindings

**\<leader\>** = "\<Space/\>"

| Plugin    | Mapping      | Action                         |
| --------- | ------------ | ------------------------------ |
|           | \<C-H\>      | Move one split left            |
|           | \<C-J\>      | Move one split down            |
|           | \<C-K\>      | Move one split up              |
|           | \<C-L\>      | Move one split right           |
|           | \<C-N\>      | Open file explorer             |
|           | \<C-S\>      | Open search & replace          |
|           | \<leader-t\> | Open a terminal buffer         |
|           | sp           | Split window horizontally      |
|           | tj           | Move one tab left              |
|           | tk           | Move one tab right             |
|           | tn           | Create a new tab               |
|           | to           | Close all other tabs           |
|           | vs           | Split window vertically        |
| Telescope | \<C-B\>      | Open buffer picker             |
| Telescope | \<C-F\>      | Open project search            |
| Telescope | \<C-P\>      | Open file picker               |

