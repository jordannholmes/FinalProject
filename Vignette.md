# How to Run the Program
The main purpose of this program is to obtain data from the TR8 package in the R software and format in such a way that makes it easier for someone to search for a specfic component or trait of a plant.

1. Run the OriginalData.txt example
This command runs the OriginalData.txt and removes the lines with ';;', ';', 'NA', and lines with no taxonomy provided, denoted by a blank line. Each command will print output into a new text file.

``` {r}
grep -v ";;" OriginalData.txt > NewData.txt
grep -v ";$" NewData.txt  > NewData2.txt
grep -v "NA" NewData2.txt > NewData3.txt
grep -v "sp." NewData3.txt > NewData4.txt
```

2. Create Tabs
This command creates tabs in between the taxonomy categories of the remaining data and prints to new text file.

``` {r}
sed 's/;/\t/g' NewData4.txt | sed 's/\.\./\t/g' > NewData5.txt
```

3. Obtain Plant Species Names
This command gives the plant species names and prints to new text file.

``` {r}
awk '{ print $NF }' NewData5.txt  > NewData6.txt
```

4. Obtain Unique Species Name
This command gives the unique species names and  prints to new text file.

``` {r}
sort -uk 1,1 NewData6.txt > NewData7.txt
```

5. Delete Numerical Values
This command gives only the species name, deletes any numerical values, and prints to new text file.

``` {r}
grep -v "[0-9]" NewData7.txt > NewData8.txt
```

6. Completion
This indicates all commands have been completed.

``` {r}
echo "done"
```

# Example Input

This input data we will use is OriginalData.txt

Obtain this input data by this [link] ( https://github.com/jordannholmes/FinalProject/blob/master/OriginalData.txt)

