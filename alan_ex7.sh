read -p "Enter the name of file where you want to remove duplicate lines from: " file
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi
uniqlines=$(cat "$file" | sort -u)
echo "$uniqlines"