read -p "Enter the name of the directory where there are FASTA files: " dir
for files in "$dir"/*.fasta
do 
  motif1="YVDRHPDDTINDYLNSI"
  len1=${#motif1}
  motif2="MGNHTWDHPDIFEILTTK" 
  len2=${#motif2}
  pos1=$( grep -bo "$motif1" "$files" | awk -F":" '{print $1}' )
  pos2=$( grep -bo "$motif2" "$files" | awk -F":" '{print $1}' )
  sum1=$(( $pos1 + $len1 ))
  sum2=$(( $pos2 + $len2 ))
  if [ -n "$pos1" ] 
  then
      echo "File: $files"
      echo "Start position of motif1: $pos1"
      echo "End position of motif1: $sum1"

  elif [ -n "$pos2" ] 
  then
      echo "File: $files"
      echo "Start position of motif2: $pos2"
      echo "End position of motif2: $sum2"
  fi
done