# Needed to use Gtk+ in Rust.
libffi_path="/usr/local/opt/libffi/lib/pkgconfig"
if [ -d $libffi_path ]; then
	if [[ "$PKG_CONFIG_PATH" == *"$libffi_path"* ]]; then
		printf " libffi"
	elif [ -z "$PKG_CONFIG_PATH" ]; then
		export PKG_CONFIG_PATH=$libffi_path
		printf " libffi"
	else
		export PKG_CONFIG_PATH="$libffi_path:$PKG_CONFIG_PATH"
		printf " libffi"
	fi
fi
unset libffi_path
