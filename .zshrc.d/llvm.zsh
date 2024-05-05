llvm_path=$(brew --prefix llvm)

if [ -d "$llvm_path" ]; then
    llvm_bin="$llvm_path/bin"
    export PATH="$llvm_bin:$PATH"
    printf "LLVM added to PATH  $llvm_bin\n"
fi
