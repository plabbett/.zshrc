plugins=(git)
autoload -Uz vcs_info

export CLICOLOR=1
export EDITOR=nano
export PATH="/usr/local/sbin:$PATH"

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats ' (%b) '

precmd() { vcs_info }

# Display on the right side of the shell
#RPROMPT='${vcs_info_msg_0_}'

setopt PROMPT_SUBST

PROMPT='%F{128}[%f%F{063}%n%f%F{128}@%f%F{54}%m%f%F{128}][%f %F{033}%~%f %F{128}]%f%F{green}${vcs_info_msg_0_}%f%F{128}:%f '

