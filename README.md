# dotfiles

A collection of configuration files.

## Neovim

My initial attempt at creating a [Neovim](https://neovim.io/) configuration.

### Requirements

- [Neovim v0.7.2+](https://neovim.io/)
- [Packer](https://github.com/wbthomason/packer.nvim)
- [git](https://git-scm.com/)

### Installation

- Backup your existing `~/.config/nvim/` directory, if it exists.
- Remove the `~/.config/nvim/` directory, if it exists.
- Clone this repository. `git clone https://github.com/renkejr/dotfiles/`
- Copy the `neovim/.config/nvim` directory to `~/.config/`.
- Install [Packer](https://github.com/wbthomason/packer.nvim).
- Run `nvim +PackerInstall`, ignoring any errors.
- Restart `nvim`.
- Run `:PackerSync` if you have any errors after a restart.

