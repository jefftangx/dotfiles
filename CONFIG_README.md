# Configuration Files

This directory contains configuration files for various tools and editors.

## Directory Structure

```
dotfiles/
├── claude/          # Claude Code CLI settings
├── cursor/          # Cursor IDE settings
├── zsh/             # Zsh shell configuration
├── vim/             # Vim configuration
└── ...
```

## Claude Code (`claude/`)

### `settings.json`
Main Claude Code settings including:
- **Hooks**: macOS notifications for task completion
- **Enabled Plugins**: Document skills, n8n, code review, etc.
- **MCP Servers**: Configuration for MCP integrations

⚠️ **Contains placeholders for sensitive data:**
- `YOUR_TOKEN_HERE` - Replace with your actual tokens
- `YOUR_USERNAME` - Replace with your system username
- `YOUR_AIRTABLE_API_KEY` - Your Airtable API key
- `YOUR_N8N_API_KEY` - Your n8n API key

**Installation:**
```bash
cp claude/settings.json ~/.claude/settings.json
# Edit ~/.claude/settings.json and replace all placeholders
```

### `mcp.json`
Claude Desktop MCP server configuration.

⚠️ **Contains placeholders for sensitive data:**
- `YOUR_GOOGLE_CLIENT_ID` - Google OAuth client ID
- `YOUR_GOOGLE_CLIENT_SECRET` - Google OAuth client secret
- `YOUR_AIRTABLE_API_KEY` - Airtable API key
- `YOUR_POSTHOG_TOKEN` - PostHog authentication token
- `YOUR_N8N_API_KEY` - n8n API key
- `YOUR_USERNAME` - System username

**Installation:**
```bash
cp claude/mcp.json ~/.claude/mcp.json
# Edit ~/.claude/mcp.json and replace all placeholders
```

## Cursor IDE (`cursor/`)

### `settings.json`
Cursor IDE settings including:
- Editor preferences (minimap, word wrap, zoom level)
- Terminal integration (zsh with iTerm)
- Vim keybindings
- Language-specific formatters
- Claude Code integration

### `keybindings.json`
Custom keyboard shortcuts:
- `Shift+Alt+5`: Match Emmet tag
- `Shift+5`: Jump to bracket (vim mode)
- `Cmd+I`: Composer mode agent
- `Shift+Enter`: Multi-line terminal input

**Installation:**
```bash
cp cursor/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
cp cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
```

## Zsh (`zsh/`)

### `.zshrc`
Main zsh configuration with:
- Lazy-loaded NVM for fast shell startup
- Antigen plugin manager
- Powerlevel10k theme
- Custom aliases

### `.p10k.zsh`
Powerlevel10k prompt configuration.

**Installation:**
```bash
cp zsh/.zshrc ~/.zshrc
cp zsh/.p10k.zsh ~/.zsh/.p10k.zsh
source ~/.zshrc
```

## Git (`.gitconfig`)

Global git configuration with:
- User information (username: jefftangx)
- Custom aliases (a, b, c, co, d, f, F, l, p, s, r, u, v)
- LFS filter configuration
- Diff3 merge conflict style

**Installation:**
```bash
cp .gitconfig ~/.gitconfig
```

## Tmux (`.tmux.conf`)

Tmux configuration with:
- Vim-like keybindings
- Custom prefix: `Ctrl-S`
- Plugin management (TPM)
- Session persistence (resurrect, continuum)

**Installation:**
```bash
cp .tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
```

## Security Notes

⚠️ **IMPORTANT**: The Claude configuration files in this repo contain **placeholders** for sensitive data. Never commit actual API keys, tokens, or secrets to version control.

When setting up on a new machine:
1. Copy the template files
2. Replace all `YOUR_*` placeholders with actual values
3. Keep your actual credentials in `~/.claude/` (not in the repo)

## Updates

To update configs in the repo:
```bash
# For non-sensitive configs (Cursor, zsh, git, tmux)
cp ~/.zshrc ~/code/dotfiles/zsh/.zshrc
cp ~/Library/Application\ Support/Cursor/User/settings.json ~/code/dotfiles/cursor/settings.json

# For Claude configs - manually sanitize first!
# Never copy directly from ~/.claude/ to avoid leaking secrets
```
