if status is-interactive
  if type -q exa
    alias ls "exa -l -g --icons"
  end

  fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --processes=\cp
  set fzf_preview_dir_command exa --all -color=always
end

set PATH $HOME/.cargo/bin $PATH

starship init fish | source

source /opt/homebrew/opt/asdf/libexec/asdf.fish