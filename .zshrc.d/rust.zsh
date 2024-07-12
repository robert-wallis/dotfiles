# Rust
cargo_home="$HOME/.cargo/bin"
if [ -d $cargo_home ]; then
    export PATH="$PATH:$cargo_home"
    printf " cargo"
fi
unset cargo_home
