PATH="/usr/local/bin:/opt/local/bin:/opt/bin:$PATH"
NODE_PATH="/usr/local/bin/nodejs/lib:/usr/local/lib/node_modules"
export CLICOLOR=1

[[ -s "/Users/kien/.rvm/scripts/rvm" ]] && source "/Users/kien/.rvm/scripts/rvm"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    . /usr/local/etc/bash_completion.d/git-completion.bash
	PS1='\h:\W$(__git_ps1 "\[\e[0;35m\](%s)")\[\e[0;39m\] \u\$ '
fi
