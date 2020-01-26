# Needed to use Gtk+ in Rust.
LIBFFI_HOME="/usr/local/opt/libffi"
if [ -d $LIBFFI_HOME ]; then
    export PKG_CONFIG_PATH="$LIBFFI_HOME/lib/pkgconfig"
    printf "LIBFFI PKG_CONFIG_PATH $LIBFFI_HOME/lib/pkgconfig\n"
fi
