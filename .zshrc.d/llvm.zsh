llvm_path=$(brew --prefix llvm@17)

if [ -d "$llvm_path" ]; then
    llvm_bin="$llvm_path/bin"
    export PATH="$llvm_bin:$PATH"
    printf " llvm@17"
fi
