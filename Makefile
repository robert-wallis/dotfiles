.PHONY: install

install:
	mkdir -p ~/bin
	ln bin/hard-link-folder ~/bin/hard-link-folder
	mkdir -p ~/.vim
	mkdir -p ~/.vim/tmp ~/.vim/backup
	hard-link-folder .vim/after/plugin/ ~/.vim/after/plugin/
	hard-link-folder .vim/autoload/ ~/.vim/autoload/
	hard-link-folder .vim/autoload/go/ ~/.vim/autoload/go/
	hard-link-folder .vim/doc/ ~/.vim/doc/
	hard-link-folder .vim/ftdetect/ ~/.vim/ftdetect/
	hard-link-folder .vim/ftplugin/ ~/.vim/ftplugin/
	hard-link-folder .vim/ftplugin/go/ ~/.vim/ftplugin/go/
	hard-link-folder .vim/indent/ ~/.vim/indent/
	hard-link-folder .vim/plugin/ ~/.vim/plugin/
	hard-link-folder .vim/snippets/ ~/.vim/snippets/
	hard-link-folder .vim/syntax/ ~/.vim/syntax/
