read -p "Enter the threshold value: " threshold
free_space=$(df -h $HOME | awk 'NR>1{print $5}') 
if [[ $free_space > $threshold ]]; then
	echo "WARNING: Free space available is less than threshold"
else
	echo "Free space available is more than threshold"	
fi