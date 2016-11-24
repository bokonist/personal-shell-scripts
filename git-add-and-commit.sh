#/bin/bash
	git add $1
	read -p "Enter the commit message : " commit_message
	git commit -m " $commit_message "
	read -p "Push to master? (y/n)" choice
	y='y'
	if [ "$choice" = 'y' ]; then
		git push origin master
	elif [ "$choice" = 'n' ]; then
		echo "Not pushed"
	fi