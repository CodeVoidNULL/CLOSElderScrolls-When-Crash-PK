cd desktop && cd closeElderScrolls
ps -x > OutputFile.txt
clear
grep -i 'The Elder Scrolls V Skyrim Legendary' OutputFile.txt > NarrowedDownlist.txt
sed 's/\??.*/??/' NarrowedDownlist.txt > pidsByList.txt
while IFS= read -r line; do
   kill $line
done < pidsByList.txt
