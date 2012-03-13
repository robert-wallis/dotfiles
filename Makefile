.PHONY: install

install: install_dotfiles install_vimdefault install_vim_bundles

install_dotfiles:
	mkdir -p ~/bin
	ln bin/hard-link-folder ~/bin/hard-link-folder

install_vimdefault:
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

install_vim_bundles:
	mkdir -p ~/.vim/bundle
	git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script
	git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
	git clone https://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/vim-jade
	git clone https://github.com/wavded/vim-stylus.git ~/.vim/bundle/vim-stylus
