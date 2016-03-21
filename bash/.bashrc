#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Alias
alias ls='ls --color=auto'
alias mount='mount -o gid=users,fmask=113,dmask=002'

#PS1
PS1='\[\e[0;32m\]>\[\e[1;32m\]>\[\e[0;36m\] [\w]\[\e[1;35m\]$\[\e[0m\] '
#PS1='\[\e[0;31m\]>\[\e[1;31m\]>\[\e[0;36m\] [\w]\[\e[1;35m\]#\[\e[0m\] '

# Less Colors for Man Pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}
