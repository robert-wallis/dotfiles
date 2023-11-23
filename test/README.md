# Testing dotfiles

```zsh
docker build -t dotfiles .
docker run --rm -it -v $PWD:/root/dotfiles.git dotfiles
inside-container# dotfiles.git/test-install
inside-container# nvim .
```