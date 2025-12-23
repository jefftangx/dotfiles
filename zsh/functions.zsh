# Quick-reload functions and aliases
# Source this file with: source ~/.zsh/functions.zsh

# Aliases
alias l='ls -G -l -a'
alias g="git"
alias v='vim'
alias pip="pip3"
alias py="python3"

# Notification function for long-running commands
notify() {
    "$@"
    local exit_code=$?
    if [ $exit_code -eq 0 ]; then
        osascript -e 'display notification "Command completed successfully" with title "✓ Done" sound name "Glass"'
    else
        osascript -e "display notification \"Command failed (exit: $exit_code)\" with title \"✗ Failed\" sound name \"Basso\""
    fi
    return $exit_code
}
