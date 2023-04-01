function fish_add_to_path
  if contains -- $argv $fish_user_paths
    echo "$argv is already in PATH\n$PATH"
  else
    echo "Adding $argv to PATH\n$PATH"
    set -U fish_user_paths $fish_user_paths $argv
    echo "$argv added to PATH\n$PATH"
  end
end
