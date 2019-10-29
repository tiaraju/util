alias clean="find . -name *.orig -delete"

####### GIT aliases

alias gst="git status"
alias gcm="git checkout master"
alias gcr="git checkout release_candidate"
alias gp="git pull"
alias gpr="git pull --rebase"
alias kdiff="git difftool"
alias kmerge="git mergetool -t kdiff3"
alias chk="cd /mnt/c/Projetos/vcs.checkout"
alias oa="cd /mnt/c/Projetos/vcs.order-auth-pipe"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias brm="!git checkout master && git pull origin master && git branch | egrep -v '(master|release_candidate)|xargs git branch -D'"
alias lt="git describe origin/master --tags  --match \"v*\" && git describe origin/release_candidate --tags  --match \"v*\""
alias llog="git log --graph --all"
alias adda="git add ."
alias brm="!git checkout master && git pull origin master && git branch | egrep -v '(master|release_candidate)|xargs git branch -D' kmerge = mergetool -t kdiff3 kdiff = difft"

######General aliases


#branch name
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\] - [$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]]\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '

warmup(){

if [[ "$#" != 1 ]]; then

	echo "Only environment URL is required"

else
	echo "Starting..."
	for i in {0..500}
	do
		curl -s -f -o /dev/null $1/meta/probe
	done
	echo "Done"
fi

}


