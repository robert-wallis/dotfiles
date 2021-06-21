# Needed to use Gtk+ in Rust.
LIBFFI_HOME="/usr/local/opt/libffi"
LIBFFI_PKGCONFIG="$LIBFFI_HOME/lib/pkgconfig"
if [ -d $LIBFFI_PKGCONFIG ]; then
	if [[ "$PKG_CONFIG_PATH" == *"$LIBFFI_PKGCONFIG"* ]]; then
		printf "PKG_CONFIG_PATH     $PKG_CONFIG_PATH\n"
	elif [ -z "$PKG_CONFIG_PATH" ]; then
		export PKG_CONFIG_PATH=$LIBFFI_PKGCONFIG
		printf "PKG_CONFIG_PATH     $PKG_CONFIG_PATH\n"
	else
		export PKG_CONFIG_PATH="$LIBFFI_PKGCONFIG:$PKG_CONFIG_PATH"
		printf "PKG_CONFIG_PATH     $PKG_CONFIG_PATH\n"
	fi
fi
