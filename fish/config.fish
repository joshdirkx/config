if status is-interactive
  if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
  end
end

starship init fish | source

set fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --processes=\cp
