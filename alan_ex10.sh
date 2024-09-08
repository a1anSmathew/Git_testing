read -p "Enter the DNA sequence: " str
count_A=0
count_G=0
count_T=0
count_C=0

for (( i=0; i<${#str}; i++ ))
do 
	char=${str:i:1} #In the string sequence seq str for every index i one value(ie i) is extracted
	case "$char" in
		[Aa]) ((count_A++)) ;;
		[Gg]) ((count_G++)) ;;
		[Tt]) ((count_T++)) ;;
		[Cc]) ((count_C++)) ;;
		*) 
			echo "Error! Invalid character '$char' found."
			exit 1 ;;
	esac
done

echo "The DNA sequence is valid."
echo "Length of the DNA sequence: ${#str}"
echo "A: $count_A, G: $count_G, T: $count_T, C: $count_C"
