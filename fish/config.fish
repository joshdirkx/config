if status is-interactive
  if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
  end

  fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --processes=\cp
  set fzf_preview_dir_command exa --all -color=always
end

starship init fish | source

