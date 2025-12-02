```
=====================================================================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||     NVIM (BTW)     ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||                    ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================
```

Based on [kickstart.nvim](http://github.com/nvim-lua/kickstart.nvim)

### Dependencies

- neovim v0.11.5
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation),
  [fd-find](https://github.com/sharkdp/fd#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- `python3`, `python3-venv`
- `npm`
- `rust` toolchain
- `racket` and `racket-langserver`
- A [Nerd Font](https://www.nerdfonts.com/)

### Install

```sh
mv ~/.config/nvim ~/.config/nvim.orig
mv ~/.local/share/nvim ~/.local/share/nvim.orig

git clone git@github.com:dsouzai/nvim.config.git ~/.config/nvim

nvim

# rm -rf ~/.config/nvim.orig
# rm -rf ~/.local/share/nvim.orig
```
