dir1=$(df -h "$HOME" | awk 'NR==2 {print $5}' | sed 's/%//g' )
dir2=$(df -h "/" | awk 'NR==2 {print $5}' | sed 's/%//g' )
if (( dir1 / dir2 > 1 ))
then 
	echo "Home has higher disk usage than root"
elif (( dir1 / dir2 < 1 ))
then 
	echo "Root has higher disk usage than home"
elif (( dir1 / dir2 == 1 ))
then 
	echo "Home and root have equal disk usage"
fi