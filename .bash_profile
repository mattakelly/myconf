# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Show full paths and Git info
function parse_git_dirty {
  git diff --quiet HEAD &>/dev/null
  [[ $? == 1 ]] && echo "*"

}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}

# Colored git prompt
PS1='\[\e[0;94m\]\u@\h:\w\[\033[0m\]$(parse_git_branch)$ '

alias code='cd ~/Dropbox/Code'
alias bp='vim ~/.bash_profile'
alias srcprof='source ~/.bash_profile'
alias sm='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias myconf='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# Work machine specific things
source ~/.work_profile 
