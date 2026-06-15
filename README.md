# neovim-config

Personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Prerequisites

Install these before setting up:

```bash
# macOS
brew install neovim git ripgrep fd lazygit lazydocker node go python3

# also install a Nerd Font for icons (e.g. JetBrainsMono)
brew install --cask font-jetbrains-mono-nerd-font
```

> **Linux:** use your distro's package manager. Neovim >= 0.9 is required.

## Installation

```bash
# backup existing config if you have one
mv ~/.config/nvim ~/.config/nvim.bak

# clone this config
git clone https://github.com/WilAm1/neovim-config.git ~/.config/nvim

# open nvim — lazy.nvim will auto-install all plugins on first launch
nvim
```

Mason will automatically install all LSP servers, formatters, and linters on first open. This may take a minute or two.

## What's Included

### Options

| Setting | Value |
|---|---|
| Clipboard | Yanks always sync to system clipboard |
| Insert mode escape | `jk` |

### Language Support

| Language | LSP | Formatter | Linter |
|---|---|---|---|
| Python | pyright | ruff | ruff |
| Go | gopls | goimports + gofmt | gopls |
| JavaScript / TypeScript | ts-ls | prettier | eslint |
| Docker | dockerfile-language-server | — | hadolint |
| Terraform | terraform-ls | terraform fmt | tflint |
| YAML | yaml-language-server | prettier | yaml-language-server |

### Plugins

| Plugin | Purpose |
|---|---|
| harpoon2 | Quick file bookmarking and jumping |
| nvim-surround | Surround text with brackets, quotes, tags |
| undotree | Visual undo history tree |
| diffview.nvim | Side-by-side git diffs and file history |
| vim-tmux-navigator | Seamless navigation between tmux panes and nvim splits |
| oil.nvim | Edit the filesystem like a buffer |
| lazydocker.nvim | Docker TUI inside nvim |

## Keybindings

> Leader key is `Space`

### Navigation

| Key | Action |
|---|---|
| `Space + a` | Harpoon: add file |
| `Ctrl + e` | Harpoon: toggle menu |
| `Ctrl + h/t/n/s` | Harpoon: jump to file 1/2/3/4 |
| `-` | Oil: open parent directory |
| `s` | Flash: jump anywhere on screen |
| `Ctrl + arrows` | Move between tmux panes / nvim splits |

### Git

| Key | Action |
|---|---|
| `Space + g + g` | Open lazygit |
| `Space + g + d` | Open diffview |
| `Space + g + h` | Diffview file history |
| `Space + l + d` | Open lazydocker |

### LSP & Diagnostics

| Key | Action |
|---|---|
| `]d` / `[d` | Next / previous diagnostic |
| `Space + c + d` | Show diagnostic detail |
| `Space + c + f` | Format file |
| `Space + x + x` | Open diagnostics panel |

### Editing

| Key | Action |
|---|---|
| `Space + u + u` | Toggle undotree |
| `Space + s + r` | Project-wide find & replace (grug-far) |
| `ysiw"` | Surround word with `"` |
| `cs"'` | Change surrounding `"` to `'` |
| `ds"` | Delete surrounding `"` |

### Search

| Key | Action |
|---|---|
| `Space + f + f` | Find files |
| `Space + f + g` | Live grep |
| `Space + f + r` | Recent files |
