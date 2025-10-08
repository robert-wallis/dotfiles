
if [[ ! $PATH =~ ".git/bin" ]]; then
    printf " .git/bin"
    export PATH=".git/bin:$PATH"
fi
