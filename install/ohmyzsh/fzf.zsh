lf() {
    fzf --preview '[[ $(file --mime {}) =~ binary ]] &&
                    echo {} is a binary file ||
                    (highlight -O ansi -l {} ||
                    coderay {} ||
                    rougify {} ||
                    cat {}) 2> /dev/null | head -500'
}