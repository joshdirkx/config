function git-delta
  git log --color=always --pretty=format:"%C(auto)%h %Cblue%aN%Creset %s %Cgreen(%cr)%Creset" |
    fzf --ansi --preview 'git diff --color=always {1}^..{1} | delta --color-only' --preview-window=up:30%,right:50% | awk '{print $1}'
end
