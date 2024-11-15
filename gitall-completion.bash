#/usr/bin/env bash

# TAB COMPLETION
# -------------------------------------------------------------------------------------------------

_gitall_completions()
{
    COMPREPLY=($(compgen -W "checkout fetch pull status tag" "${COMP_WORDS[1]}"))
    # COMPREPLY+=("checkout")
    # COMPREPLY+=("fetch")
    # COMPREPLY+=("pull")
    # COMPREPLY+=("status")
    # COMPREPLY+=("tag")
}

complete -F _gitall_completions gitall