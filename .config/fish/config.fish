alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
if status is-interactive
    # Commands to run in interactive sessions can go here
    export PNPM_HOME="/Users/radu/Library/pnpm"
    export PATH="$PNPM_HOME:$PATH"
end
