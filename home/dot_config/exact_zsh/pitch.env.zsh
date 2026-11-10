# granted: tell it that the assume alias exists
export GRANTED_ALIAS_CONFIGURED="true"
alias assume='source $(asdf which assume)'
export PATH="$HOME/Projects/pitch-app/scripts:$PATH"

pit() {
    local git_root
    git_root=$(git rev-parse --show-toplevel 2>/dev/null)
    
    if [[ -z "$git_root" ]]; then
        echo "Error: Not in a git repository" >&2
        return 1
    fi
    
    local pit_script="$git_root/scripts/pit"
    
    if [[ ! -x "$pit_script" ]]; then
        echo "Error: pit script not found at $pit_script" >&2
        return 1
    fi
    
    "$pit_script" "$@"
}
