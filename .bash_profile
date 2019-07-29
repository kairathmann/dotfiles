alias dotfiles="git --git-dir=$HOME/.dotfiles.git"

alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git log --oneline --decorate --graph"
alias gmn="git merge --no-ff --no-commit"
alias gp="git pull"
alias gr="git reset --hard HEAD"
alias gs="git status"
alias ni="npm install"

alias nbp="nano $HOME/.bash_profile"
alias sbp="source $HOME/.bash_profile"

alias cd..="cd .."

# Include Git Bash completions
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
