# Include Git Bash completions
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

export PATH="/usr/local/sbin:$PATH"
source $HOME/.bash_aliases

# rbenv
# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.
# Link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# Load rbenv automatically
eval "$(rbenv init -)"
