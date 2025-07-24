# Rust
cargo_home="$HOME/.cargo/bin"
if [ -d $cargo_home ]; then
    export PATH="$PATH:$cargo_home"
    printf " cargo"
fi
unset cargo_home

rustup_prefix=$(brew --prefix rustup)
if [ -d "$rustup_prefix/bin" ]; then
  export PATH="$PATH:$rustup_prefix/bin"
  printf " rustup"
fi
unset rustup_prefix

