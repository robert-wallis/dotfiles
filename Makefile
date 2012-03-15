.PHONY: install

BIN_FILES = bin/hard-link-folder

VIM_SRC="${PWD}/.vim"
VIM_DEST="${HOME}/.vim"
VIM_BUNDLES_DEST=${VIM_DEST}"/bundles"

install : ${BIN_FILES} ${VIM_DEST} ${VIM_BUNDLES_DEST}
	git submodule sync

~/bin : ${BIN_FILES}
	mkdir -p $@

${BIN_FILES} : ${BIN_FILES}
	ln -f bin/hard-link-folder ~/bin/hard-link-folder

${VIM_DEST} :
	@printf "\e[0;33minstalling $@\e[0m\n"
	mkdir -p ${VIM_DEST}
	mkdir -p ${VIM_DEST}/tmp ${VIM_DEST}/backup
	hard-link-folder ${VIM_SRC}/after/plugin/ ${VIM_DEST}/after/plugin/
	hard-link-folder ${VIM_SRC}/autoload/ ${VIM_DEST}/autoload/
	hard-link-folder ${VIM_SRC}/doc/ ${VIM_DEST}/doc/
	hard-link-folder ${VIM_SRC}/ftplugin/ ${VIM_DEST}/ftplugin/
	hard-link-folder ${VIM_SRC}/indent/ ${VIM_DEST}/indent/
	hard-link-folder ${VIM_SRC}/plugin/ ${VIM_DEST}/plugin/
	hard-link-folder ${VIM_SRC}/snippets/ ${VIM_DEST}/snippets/
	hard-link-folder ${VIM_SRC}/syntax/ ${VIM_DEST}/syntax/

${VIM_BUNDLES_DEST} :
	@printf "\e[0;33minstalling vim bundles\e[0m\n"
	mkdir -p $@
	@ls -1 ${VIM_SRC}/bundles | \
		while read D; do \
			ln -n -s ${VIM_SRC}/bundles/$$D/ $@/$$D; \
		done
	@if [ ! -d ${VIM_DEST}/bundles/vim-go -a -d ${GOROOT} ]; then \
		ln -s ${GOROOT}/misc/vim/ $@/vim-go; \
	fi
