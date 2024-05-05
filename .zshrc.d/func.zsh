dirname=$(dirname "${(%):-%x}")
funcs_path="${dirname}/../funcs"
if [ -f "${funcs_path}" ]; then
    source "${funcs_path}"
    printf "funcs               $funcs_path\n"
fi
