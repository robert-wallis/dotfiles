# Rust
CARGO_HOME="$HOME/.cargo/bin"
if [ -d $CARGO_HOME ]; then
    export PATH="$PATH:$CARGO_HOME"
    printf "RUST CARGO_HOME     $CARGO_HOME\n"
fi
