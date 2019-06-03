# Plants_TR8

This program takes publicly available databases and provides it to the user to easily
retrieve the traits data of plant species. The Plants_TR8 program can be utilized by
plant ecologists when an accumilation of 'traits' data about plant species needs to be
collected from various data bases. The available databases where TR8 obtains the functional
traits data for plant species are: Biolflor, The Ecological Flora of the British Isles,
LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal intensity databases,
Catminat, BROT, PLANTS, Jepson Flora Project.

### Purpose
The main purpose of this program is to obtain data from the TR8 package in the R
software and format in such a way that makes it easier for someone to search for
a specfic component or trait of a plant.

## Getting Started
This program has two parts:
1) Hoffman 2
2) R Studio

# Workflow

The flow of the program is as follows:
Reads the input file of the OriginalData.txt provided by Github ->
Recognizes and removes single semicolons, double semicolons, blank spaces, and presence of "N/A" ->
Production of a table of user-specified relevant ecological information for each unique species or genus ->
RStudio provides further information of each specific species or genus from the databases of TR8

# Install TR8
``` {r}
install.packages("TR8")
```

# Install GitHub for Pushing Analysis
``` {r}
install_github("roponsci/TR8")
```

# Download the Specific Package Required for Analysis
``` {r}
library("TR8")
```

# How do you use the program?
Our ultimate goal is to obtain only the unique species names. After this
we will input this data to Rstudio. Steps are as follow:

1) Remove lines with ';;', ';', 'NA', and lines with no taxonomy provided,
denoted by a blank line
        -this is fulfilled through the grep command
2) Create tabs in between taxonomy categories of the remaining data
        -this is fulfilled through the sed command
3) Obtain Plant Species name
        -this is fulfilled through the awk command
4) Obtain Unique Species name
        -this is fulfilled through the sort command
5) Obtain only Species name, no Numerical values
        -this is fulfilled through the grep command

# Authors
Nicole Diaz & Jordan Holmes

