# homebrew python
if command -v brew &>/dev/null; then
  python_path="$(brew --prefix python)/libexec/bin"
  if [ -d "$python_path" ]; then
    export PATH="$PATH:$python_path"
    printf " python"
  fi
  unset python_path
fi
