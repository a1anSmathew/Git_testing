read -p "Enter the name of the csv file: " csvfile
awk -F '[:,]' '{print "User ID: "$1" \nUser_name: "$2"\nDepartment: "$3"\n"}' $csvfile