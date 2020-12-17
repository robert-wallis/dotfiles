# NVM node version manager
NVM_DIR="$HOME/.nvm"
if [ -d $NVM_DIR ]; then
    export NVM_DIR="$NVM_DIR"
	[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm
	[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash completion
    printf "nvm NVM_DIR         $NVM_DIR\n"
fi
