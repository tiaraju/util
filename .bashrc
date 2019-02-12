
checkBalance(){
	if [[ "$#" != 1 ]]; then
		echo "Missing balance name"
	else
		aws --region us-east-1 elb describe-provisioned-capacity --load-balancer-name "$1"		
	fi
}

provisionBalance(){
	
	if [[ "$#" == 2 ]]; then
		echo "running..."
		aws --region us-east-1 elb modify-provisioned-capacity --load-balancer-name "$1" --minimum-lb-capacity-units "$2"
	else
		echo "wrong number of parameters, type: "
		echo "param1: balancer name" 
		echo "param2: number of units"		
	fi
	
}


alias clean="find . -name *.orig -delete"
 
####### GIT aliases

alias gst="git status" 
alias gcm="git checkout master" 
alias gcr="git checkout release_candidate"
alias gp="git pull"
alias gpr="git pull --rebase"
alias kdiff="git difftool"
alias kmerge="git mergetool -t kdiff3"
alias chk="cd C:/Projetos/vcs.checkout"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias brm="!git checkout master && git pull origin master && git branch | egrep -v '(master|release_candidate)|xargs git branch -D'"
