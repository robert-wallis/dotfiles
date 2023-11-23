# docker environment that represents a typical dev environment for me to test my neovim config
# Copyright (C) 2023 - Robert A. Wallis

FROM rust:latest

RUN apt update
RUN apt install -y \
	git \
	sed \
	zsh

# setup UTF-8 locale
RUN apt install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
	dpkg-reconfigure --frontend=noninteractive locales && \
	update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8

# install neovim from github, because ubuntu uses a version < 0.8
RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage && ./nvim.appimage --appimage-extract && rm nvim.appimage
RUN ln -s /squashfs-root/AppRun /usr/bin/nvim

WORKDIR /root

# set to zsh because macOS makes it default, and I like it more than bash
CMD ["zsh"]
