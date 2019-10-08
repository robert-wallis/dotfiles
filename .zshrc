# base
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

# Homebrew
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Ruby
export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"

# Fastlane iOS
export PATH="$PATH:$HOME/.fastlane/bin"

# SDL
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
