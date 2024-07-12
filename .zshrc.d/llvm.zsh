if type "brew" > /dev/null; then
	llvm_path=$(brew --prefix llvm)

	if [ -d "$llvm_path/bin" ]; then
		export PATH="$llvm_path/bin:$PATH"
		printf " llvm"
	fi
	unset llvm_path
fi

