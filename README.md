# Gitall

gitall is a command to effect all git subrepositories below the current working directory
NOTE: This project does not seek to reproduce all functionality from all git commands
        Scope is currently limited to the functions listed below

Usage: 

        gitall <command> [<args>] [options]

commands

    -C, checkout [--NAME=<BRANCH_NAME>] [options]
        Switch all git subrepositories onto <BRANCH_NAME> 
        The branch must exist for all repositories unless create new branch is specified
            -N=<BRANCH_NAME>, --NAME=<BRANCH_NAME> specifies the name of the to checkout
        options:
            -b, --branch        Create and checkout a new branch of name specified by --NAME= (WIP)
            -f, --force         Forces checkout, without checking for changes (WIP)
            -m, --main          checks out only subrepositories that start on main/master branch
            -n, --noMain        checks out only subrepositories that do not start on main/master branch

    -F, fetch [options]
        Fetch all git subrepositories onto their current branch(es)/tag(s)
        options:
            -m, --main          Fetches only subrepositories on main/master branch
            -n, --noMain        Fetches only subrepositories not on main/master branch

    -P, pull [options]
        Pull all git subrepositories on their current branch(es)/tag(s)
        options:
            -m, --main          Pulls only subrepositories on main/master branch
            -n, --noMain        Pulls only subrepositories not on main/master branch

    -S, status [options]
        Report the status of all git subrepositories on their current branch(es)/tag(s)
        options:
            -q, --quiet         Reports only repositories with changes present
            -m, --main          Reports only subrepositories on main/master branch
            -n, --noMain        Reports only subrepositories not on main/master branch

    -T, tag [<newTagName>][options] (WIP)
        Create a new tag and pushes all git subrepositories
        options:
            -m, --main          Pulls only subrepositories on main/master branch
            -n, --noMain        Pulls only subrepositories not on main/master branch

## Disclaimer

This project is a means for me to learn bash while also providing a simple alternative using the standard git command format
