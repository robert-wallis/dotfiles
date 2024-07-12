dirname=$(dirname "${(%):-%x}")
funcs_path="${dirname}/../funcs"
if [ -f "${funcs_path}" ]; then
    printf " \e[33mfuncs\e[0m"
    source "${funcs_path}"
fi
