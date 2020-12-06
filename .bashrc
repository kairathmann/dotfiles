# Include Git Bash completions
if [ -r /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash ]
then
	. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
elif [ -r /usr/local/etc/profile.d/bash_completion.sh ]
then
	. /usr/local/etc/profile.d/bash_completion.sh
fi

export PATH="/usr/local/sbin:$PATH"
source $HOME/.bash_aliases

# rbenv
# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# Link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# Load rbenv automatically
eval "$(rbenv init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

export HISTCONTROL=ignorespace
export HISTFILE="$HOME/OneDrive/dotfiles/.bash_history"
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="%F %T "
PROMPT_COMMAND='history -a'
shopt -s histappend

# Have pyenv manage our Python version
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# PATH
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
