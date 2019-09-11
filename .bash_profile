# scripts
export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export CDPATH="$HOME/Dev:$HOME/Dev/rust:$HOME/Dev/Python"
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

# aliases
alias dir=ls

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# ruby
export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"

# fastlane iOS
export PATH="$PATH:$HOME/.fastlane/bin"

# SDL
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# libffi
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

HOMEBREW_PREFIX=$(brew --prefix)
if type brew &>/dev/null; then
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

