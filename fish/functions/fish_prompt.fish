function fish_prompt

    set dir_color $fish_color_cwd
    set git_color $fish_color_git

    if test $USER = 'root'
        set prompt_color BC3030
        set prompt "# "
    else
        set prompt_color $fish_color_user
        set prompt "$USER\$ "
    end

    set branch (git branch --show-current 2> /dev/null)

    if test "$branch" != ""
        set branch " $branch"
        set changes (git status --short | wc -l)
        if test "$changes" != "0"
            set branch "$branch#$changes#"
            set git_color bf4540
        end
        set branch $branch\n
    else
        set branch ""
    end

    echo -e (set_color C0C0C0)"┌"(set_color $dir_color)(pwd)\n(set_color $git_color)$branch(set_color C0C0C0)"└"(set_color $prompt_color)"$prompt"
end
