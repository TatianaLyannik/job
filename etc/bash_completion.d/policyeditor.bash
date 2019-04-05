_policyeditor()
{
    local cur prev opts base
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # PolicyEditor Options
    opts="-help -file -defaultfile -codebase -signedby -principals -verbose"

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
    return 0
}
complete -F _policyeditor policyeditor
