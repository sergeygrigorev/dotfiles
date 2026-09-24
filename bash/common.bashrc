alias sudo='sudo '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

alias l='ls -lh'
alias ll='ls -lha'

cdgr() {
    local root
    if root=$(git rev-parse --show-toplevel); then
        local root_unix=$(cygpath -u "$root")
        cd "$root_unix"
    fi
}

alias gc='git commit -m'
alias gca='git commit -am'
alias gcane='git commit --amend --no-edit'
alias gs='git status'
alias gf='git fetch'
alias gps='git push'
alias gpsa='git remote | xargs -I{} git push {}'
alias gpl='git pull'
alias gl='git log'
alias glo='git log --oneline'
alias glp="git log '--pretty=tformat:%C(yellow)%h %Cblue%an %ah %Cgreen%cn %ch %Cred%d%n%s'"
alias ga='git add '
alias gal='git add --all'

alias df-install="$DOTFILES_DIR/install.sh && source ~/.bashrc && source ~/user.bashrc"
alias df-resource='source ~/.bashrc && source ~/user.bashrc'
