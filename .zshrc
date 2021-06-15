# base
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export CLICOLOR=1

for cfg in $(ls $HOME/.zshrc.d/*); do
    [ -r $cfg ] && source $cfg
done

# http://bewatermyfriend.org/p/2012/003/
autoload -Uz compinit && compinit

newline=$'\n'
PROMPT="%(?..🚪 %F{red}%?%f${newline})%m:%F{yellow}%2~%f \$vcs_info_msg_1_%# "
RPROMPT=\$vcs_info_msg_0_
