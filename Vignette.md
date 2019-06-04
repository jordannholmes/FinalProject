# How to Run the Program
The main purpose of this program is to obtain data from the TR8 package in the R software and format in such a way that makes it easier for someone to search for a specfic component or trait of a plant.

1. Run the OriginalData.txt example
- This command runs the OriginalData.txt and removes the lines with ';;', ';', 'NA', and lines with no taxonomy provided, denoted by a blank line. Each command will print output into a new text file. **For the purposes of this project, and after running RStudio analysis, it has been decided that we will keep lines with ;; and NA in order to find more Genus.Species within our original dataset to be anaylyzed.** ***(this is denoted by the hashtags "#" prior to certain grep functions)***


``` {r}
#grep -v ";;"
grep -v ";$" OriginalData.txt  > NewData10.txt
#grep -v "NA"
grep -v "sp." NewData10.txt > NewData20.txt
```

2. Create Tabs
- This command creates tabs in between the taxonomy categories of the remaining data and prints to new text file.

``` {r}
sed 's/;/\t/g' NewData20.txt | sed 's/\.\./\t/g' > NewData30.txt
```

3. Obtain Plant Genus Species Names
- This command gives plant genus name, tabs, species name, and prints to new text file.

``` {r}
awk '{ print $59 " " $60 }' NewData30.txt  > NewData40.txt
```

4. Obtain Unique Genus and Species Name
- This command gives gives the unique genus name/species names combinations and prints to new text file.

``` {r}
sort -uk 1,1 NewData40.txt > NewData50.txt
```

5. Delete Numerical Values
- This command gives only the species name, deletes any numerical values, and prints to new text file.

``` {r}
grep -v "[0-9]" NewData50.txt > NewData60.txt
```

6. Completion
- This indicates all commands have been completed.

``` {r}
echo "done"
```

# Example Input/ A Small Test Data Set

This input data we will use is OriginalData.txt

Obtain this input data by this link: https://github.com/jordannholmes/FinalProject/blob/master/OriginalData.txt

# Expected Output (of Running Program Using the Small Dataset)
### We are given the ***Unique Genus Name followed by its Species Name***

Anomobryum auratum
Artemisia californica
Bryum argenteum
Chlorococcum oleofaciens
Crassula aquatica
Gemmabryum dichotomum
Hormotilopsis gelatinosa
Interfilum massjukiae
Pseudochlorella signiensis
Ptychostomum funkii
Tetracystis pampae
