function fish_prompt
    set_color red --bold
    printf "["
    set_color blue
    printf "%s" "$PWD"
    set_color red
    printf "] "
    set_color normal
end
