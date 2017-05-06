PATH="/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/bin:$PATH"
NODE_PATH="/usr/local/bin/nodejs/lib:/usr/local/lib/node_modules"
export CLICOLOR=1

export PERL5LIB="/Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level"

[[ -f `brew --prefix`/etc/bash_completion ]] && . `brew --prefix`/etc/bash_completion

if [ -f "$HOME/.rvm/scripts/rvm" ]; then
  source "$HOME/.rvm/scripts/rvm"
  PATH=$PATH:$HOME/.rvm/bin
fi

[[ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]] && . `brew --prefix`/etc/bash_completion.d/git-completion.bash

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    PS1='\h:\W$(__git_ps1 "\[\e[0;35m\](%s)")\[\e[0;39m\] \u\$ '
fi


[[ -f `brew --prefix`/etc/bash_completion.d/hg-completion.bash ]] && . `brew --prefix`/etc/bash_completion.d/hg-completion.bash

# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh
