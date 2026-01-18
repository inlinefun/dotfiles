setopt PROMPT_SUBST

autoload -Uz colors
colors

precmd() {
  LAST_EXIT_CODE=$? # used by indicator at working dir
}

fg()    { echo "%{\e[38;2;$1m%}"; }
bg()    { echo "%{\e[48;2;$1m%}"; }
reset() { echo "%{\e[0m%}"; }

working_dir() {
    local output bg_color fg_color

    if [[ $PWD == $HOME ]]; then
        output=" "
    elif [[ $PWD == $HOME/* ]]; then
        output=" /${PWD#$HOME/}"
    else
        output="/${PWD#/}"
    fi

    if [[ $LAST_EXIT_CODE -eq 0 ]]; then
        bg_color="$PROMPT_PRIMARY"
        fg_color="$PROMPT_ON_PRIMARY"
    else
        bg_color="$PROMPT_ERROR"
        fg_color="$PROMPT_ON_ERROR"
    fi

    echo "$(fg "$bg_color")$(bg "$bg_color")$(fg "$fg_color")$output$(reset)$(fg "$bg_color")$(reset)"
}


git_info() {
    git rev-parse --is-inside-work-tree &>/dev/null || return

    local branch bg_color fg_color staged unstaged ahead behind arrows

    branch=$(git symbolic-ref --short -q HEAD 2>/dev/null || git rev-parse --short HEAD)
    ahead=$(git rev-list --count @{u}..HEAD 2>/dev/null)
    behind=$(git rev-list --count HEAD..@{u} 2>/dev/null)

    while IFS= read -r line; do
        [[ "${line[1]}" != " " ]] && staged=1
        [[ "${line[2]}" != " " ]] && unstaged=1
    done < <(git status --porcelain 2>/dev/null)

    if (( ahead > 0 && behind > 0 )); then
        bg_color="$PROMPT_GIT_DIVERGED"
    elif (( behind > 0 )); then
        bg_color="$PROMPT_GIT_BEHIND"
    elif (( ahead > 0 )); then
        bg_color="$PROMPT_GIT_AHEAD"
    elif [[ -n $unstaged ]]; then
        bg_color="$PROMPT_GIT_DIRTY"
    elif [[ -n $staged ]]; then
        bg_color="$PROMPT_GIT_STAGED"
    else
        bg_color="$PROMPT_GIT_CLEAN"
    fi

    fg_color="$PROMPT_ON_GIT"
    (( ahead > 0 ))  && arrows+="↑$ahead"
    (( behind > 0 )) && arrows+="↓$behind"

    echo "$(fg "$bg_color")$(bg "$bg_color")$(fg "$fg_color") $branch $arrows$(reset)$(fg "$bg_color")$(reset)"
}

PROMPT='$(working_dir) '
RPROMPT='$(git_info)'
