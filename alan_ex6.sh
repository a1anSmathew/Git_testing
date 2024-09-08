read -p "Enter the directory name: " dir
if [ ! -d $dir ]
	then
    echo "Please input a valid directory name."
    exit 1
else 
	find $dir -type d -empty > output.txt
fi