#!/bin/bash/sh

echo '###########'
echo "loading....."

#Action 1:

#To delete the species without a full taxonomy breakdown, we uploaded the README_Week7_Data.txt file to GitHub to view the data. 

#We used Ctrl F to find ';;' which indicates that one category within the phylogeny was non identified. This was to confirm how may species would have to be deleted in the text file.

#We returned to README_Week7_Data.txt file and deleted the lines with the ';;' character present and the single ';' character present  using the command...

grep -n ";;" README_Week7_Data.txt | grep -n ";$" | grep -n "NA$"

#Action 2:

#We created a secondary command in the case that grep did not work. This command, using sed, required each line to be individually recognized. This was not as time efficient or universal, therefore we used the grep function in our own project.

#sed -e '4d; 16d; 23d; 24d; 25d; 27d; 30d; 31d; 35d; 36d; 40d; 43d; 45d; 46d; 47d; 55d; 57d; 67d; 68d; 79d; 82d; 85d; 86d; 90d; 91d; 92d; 102d; 103d; 104d; 105d; 116d; 121d; 122d; 123d; 128d' README_Week7_Data.txt

#We decided to also create a pipe with a combination of commands, exemplified below, in order make be more time and space efficient in the case that the sed function must be used instead of the grep function. 


#Action 3:

#This command will separate the taxonomy categories (Kingdom, Phylum, Class, Order, Family, Genus, Species) listed for each species. These are listed at the very end of the data.

#This command will take out the single semicolons and replace them with tabs, to create the space in between each column.

#sed -e '4d; 16d; 23d; 24d; 25d; 27d; 30d; 31d; 35d; 36d; 40d; 43d; 45d; 46d; 47d; 55d; 57d; 67d; 68d; 79d; 82d; 85d; 86d; 90d; 91d; 92d; 102d; 103d; 104d; 105d; 116d; 121d; 122d; 123d; 128d' README_Week7_Data.txt | sed 's/;/\t/g' | sed 's/\.\./\t/g' 


#Action 4:

#Went to first line of the text file, which provides the titles for each column of data. Added the terms Kingdom, Phylum, Class, Order, Family, Genus, Species, all of which were separated by tabs. This was for our own organization. It is not necessary for analysis purposes.

#This was done manually instead of using a command. We did this to ensure the titles were were correctly placed over the corresponding data and to save time.




#This completes the first part of our Final Project as the data is properly organized with incomplete data eliminated.

#The remainder of our project with focus on using RStudio and TR8 Package to analyze different variables of the remaining species data in README_Week7_Data.txt.


echo "done"
