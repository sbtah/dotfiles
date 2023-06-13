#!/bin/bash


SS=''
COLLECTOR=''
ATTACHMENTS=''


echoc() {
    local text
    local color
    local bold
    local reset

    text="$1"
    color="$(tput setaf $2)"

    bold="$(tput bold)"
    reset="$(tput sgr0)"

    echo -e "${reset}${bold}${color}\n$text${reset}"
}

echored() {
    echoc "$1" 160
}

echoblue() {
    echoc "$1" 30
}

echogreen() {
    echoc "$1" 40
}

echoorange() {
    echoc "$1" 172
}

refresh() {
    cd "${1}" || exit 1
    if [[ $(git rev-parse --abbrev-ref HEAD) == 'master' ]]; then
        echogreen "Stashing current changes..."
        git stash
        echogreen 'Pulling changes...'
        if git pull; then
            echogreen "Successfully ran: 'git pull' command."
            git stash pop
            return 0
        else
            echored "Failed at pulling changes!"
            git stash pop
            return 1
        fi
    else
        echored "REPOSITORY IS NOT ON MASTER BRANCH. SKIPPING...."
        return 1
    fi
}

for path in $SS $COLLECTOR $ATTACHMENTS; do
    echoblue " -- Working on Repository: ${path} -- "
    refresh "${path}"
    echoorange " -- Finished Repository : ${path} -- "
    echo
done

exit 0
