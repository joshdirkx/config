if status is-interactive
  if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
  end
end

starship init fish | source
