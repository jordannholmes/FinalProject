# How to Run the Program (On Hoffman2)
The main purpose of this program is to obtain data from the TR8 package in the R software and format in such a way that makes it easier for someone to search for a specfic component or trait of a plant species.

1. Run the Test_Set.txt.
- This command runs the Test.txt and removes the lines with ';;', ';', 'NA', and lines with no taxonomy provided, denoted by a blank line. Each command will print output into a new text file. 

**For the purposes of this project, and after running RStudio analysis, it has been decided that we will keep lines with ;; and NA in order to find more Genus.Species within our original dataset to be anaylyzed.** 
***(this is denoted by the hashtags "#" prior to certain grep functions)***

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
