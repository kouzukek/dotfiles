autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

setopt prompt_subst
setopt re_match_pcre

function rprompt-git-current-branch {
        local name st color gitdir action
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
                return
        fi
        name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
        if [[ -z $name ]]; then
                return
        fi

        gitdir=`git rev-parse --git-dir 2> /dev/null`
        action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

        st=`git status 2> /dev/null`
	if [[ "$st" =~ "(?m)^nothing to" ]]; then
                color=%F{green}
	elif [[ "$st" =~ "(?m)^nothing added" ]]; then
                color=%F{yellow}
	elif [[ "$st" =~ "(?m)^# Untracked" ]]; then
                color=%B%F{red}
        else
                 color=%F{red}
         fi

              
        echo "$color{$name$action}%f"
}

export PROMPT='%~`rprompt-git-current-branch`$ '
export RPROMPT="[$USER@$HOST]"
