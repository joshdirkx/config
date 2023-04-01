function fish_remove_from_path
  if set -l index (contains -i $argv[1] $PATH)
    echo "Removing $argv[1] from PATH\n$PATH"
    set --erase --universal fish_user_paths[$index]
    echo "$argv[1] removed from PATH\n$PATH"
  else
    echo "$argv[1] not found in PATH\n$PATH"
  end
end
