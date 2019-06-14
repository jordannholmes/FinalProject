#!/bin/bash/sh

echo '###########'
echo "loading....."

#Removes lines with ';;', ';', 'NA', and lines with no taxonomy provided, denoted by a blank line. Each command will print output into a new text file.
#For the purposes of this project, and after running RStudio analysis, it has been decided that we will keep lines with ;; and NA in order to find more Genus.Species within our original dataset to be anaylyzed.


#grep -v ";;"
grep -v ";$" OriginalData.txt  > NewData10.txt
#grep -v "NA"
grep -v "sp." NewData10.txt > NewData20.txt

#Creates tabs in between the taxonomy categories of the remaining data. Prints to new text file.

sed 's/;/\t/g' NewData20.txt | sed 's/\.\./\t/g' > NewData30.txt

#Gives Plant Genus name, Tabs, Species name. Prints to new text file.

awk '{ print $59 " " $60 }' NewData30.txt  > NewData40.txt

#Gives the unique Genus name/Species names combinations. Prints to new text file.

sort -uk 1,1 NewData40.txt > NewData50.txt

#Gives only the Genus name/Species name. Deletes any numerical values. Prints to new text file.

grep -v "[0-9]" NewData50.txt > NewData60.txt

#Indicates all commands have been completed.

echo "done"
