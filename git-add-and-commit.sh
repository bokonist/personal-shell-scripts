#/bin/bash
	git add $1
	read -p "Enter the commit message : " commit_message
	git commit -m  " $commit_message "
	git push origin master