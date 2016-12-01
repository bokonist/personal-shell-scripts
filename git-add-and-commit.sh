#/bin/bash
	git add $1
	read -p "Do you want to commit? (y/n) : " choice
	if [ "$choice" = 'y' ]; then
		read -p "Enter the commit message : " commit_message
		git commit -m " $commit_message "
		read -p "Push to master? (y/n) " choice
		if [ "$choice" = 'y' ]; then
			git push origin master
		elif [ "$choice" = 'n' ]; then
			echo "Not pushed"
		fi
	elif [ "$choice" = 'n' ]; then
		echo "Not committed"

	fi