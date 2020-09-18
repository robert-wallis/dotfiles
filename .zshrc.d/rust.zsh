# Rust
CARGO_HOME="$HOME/.cargo/bin"
if [ -d $CARGO_HOME ]; then
    export PATH="$PATH:$CARGO_HOME"
    printf "rust CARGO_HOME     $CARGO_HOME\n"
fi
