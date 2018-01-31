checkBalance(){
	if [[ "$#" != 1 ]]; then
		echo "Missing balance name"
	else
		echo "checking balance "$1" "
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
 
