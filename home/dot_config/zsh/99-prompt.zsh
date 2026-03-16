setopt PROMPT_SUBST

autoload -Uz colors
colors

precmd() {
  LAST_EXIT_CODE=$? # used by indicator at working dir
}

fg()    { echo "%F{$1m}"; }
bg()    { echo "%K{$1m}"; }
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
        bg_color="blue"
        fg_color="black"
    else
        bg_color="red"
        fg_color="black"
    fi

    echo "%F{$bg_color}%K{$bg_color}%F{$fg_color}$output%k%F{$bg_color}%f"
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
        bg_color="red"
    elif (( behind > 0 )); then
        bg_color="orange"
    elif (( ahead > 0 )); then
        bg_color="magenta"
    elif [[ -n $unstaged ]]; then
        bg_color="yellow"
    elif [[ -n $staged ]]; then
        bg_color="blue"
    else
        bg_color="green"
    fi

    fg_color="black"
    (( ahead > 0 ))  && arrows+="↑$ahead"
    (( behind > 0 )) && arrows+="↓$behind"

    echo "%F{$bg_color}%K{$bg_color}%F{$fg_color} $branch $arrows%k%F{$bg_color}%f"
}

PROMPT='$(working_dir) '
RPROMPT='$(git_info)'
