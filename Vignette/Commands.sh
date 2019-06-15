#!/bin/bash/

echo '###########'
echo "loading....."

#Removes lines with ';;', ';', 'NA', and lines with no taxonomy provided, denoted by a blank line. Each command will print output into a new text file.
#For the purposes of this project, and after running RStudio analysis, it has been decided that we will keep lines with ;; and NA in order to find more Genus.Species within our original dataset to be anaylyzed.


#grep -v ";;"
grep -v ";$" Test_Set.txt  > NewData10.txt
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

Rscript --vanilla RStudio.R


#Rscript --install.packages("TR8", dependencies = TRUE) <  NewData60.R

#Rscript --library(TR8) < NewData60.R

#Rscript --install.packages("devtools") < NewData60.R 

#Rscript --library(devtools) < NewData60.R 

#Rscript --dev_mode(on=T) < NewData60.R 

#Rscript --install_github("GioBo/TR8",ref="master") < NewData60.R 

#Rscript --library(TR8) < NewData60.R 

#Rscript --my_species<-c("Anomobryum auratum", "Artemisia californica", "Bryum argenteum", "Chlorococcum oleofaciens", "Crassula aquatica", "Gemmabryum dichotomum", "Hormotilopsis gelatinosa", "Interfilum massjukiae", "Pseudochlorella signiensis", "Ptychostomum funkii", "Tetracystis pampae", "Apium graveolens","Holcus mollis","Lathyrus sylvestris", "Potentilla anserina", "Avena fatua") < NewData60.R 

#Rscript --my_traits<-c("h_max", "h_min", "leaf_size", "age_first_flowering", "le_long") < NewData60.R 

#Rscript --my_data<-tr8(species_list = my_species, download_list = my_traits) < NewData60.R 

#Rscript --print(my_data) <  NewData60.R 


#Indicates all commands have been completed.

echo "done"
