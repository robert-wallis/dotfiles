# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
# https://salferrarello.com/zsh-git-status-prompt/
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# use `zstyle` to see the current values, and do your own things with them
zstyle ':vcs_info:*' check-for-changes true # turn on staged/unstaged
zstyle ':vcs_info:*' stagedstr '%F{red}' # start red for staged
zstyle ':vcs_info:*' unstagedstr '%F{yellow}' # start yellow for unstaged
zstyle ':vcs_info:*' formats '%f(%c%u%b%f)' # white(staged unstaged branchname white)
