# Plants In Trait Analysis (PITA)

## Introduction

### Background
This program takes publicly available databases and provides it to the user to easily
retrieve the traits data of plant species. The Plants_TR8 program can be utilized by
plant ecologists when an accumilation of 'traits' data about plant species needs to be
collected from various data bases. The available databases where TR8 obtains the functional
traits data for plant species are: Biolflor, The Ecological Flora of the British Isles,
LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal intensity databases,
Catminat, BROT, PLANTS, Jepson Flora Project.

### Justification/Purpose
The main purpose of this program is to obtain data from the TR8 package in the R
software and format in such a way that makes it easier for someone to search for
a specific component or trait of a plant species.

## Dependencies
This program has three parts:
1) Hoffman 2 - Shell
2) R Studio
3) CyberDuck

## Program Workflow
The flow of the program is as follows:

1) Reads the input file of the OriginalData.txt provided by Github.

2) Recognizes and removes single semicolons, double semicolons, blank spaces, and presence of "N/A" from OriginalData.txt. However, for
the purposes of this project and after running RStudio analysis, it has been decided that we will keep lines with ;; and NA in order to find more Genus and Species within our original dataset to be anaylyzed.

3) Creates a table of user-specified relevant ecological information for each unique genus and species.

4) RStudio provides further information of each specific genus and species from the databases with the TR8 package.

## Install TR8
``` {r}
install.packages("TR8")
```

## Install GitHub for Pushing Analysis
``` {r}
install_github("roponsci/TR8")
```

## Download the Specific Package Required for Analysis
``` {r}
library("TR8")
```

## Instructions
Our ultimate goal is to obtain only the unique genus and species combinations. After this
we will input this data to Rstudio. Steps are as follow:

1) Remove lines with ';' and lines with no taxonomy provided,
denoted by a blank line: 
- This is fulfilled through the ***grep*** command.

2) Create tabs in between taxonomy categories of the remaining data: 
- This is fulfilled through the ***sed*** command.

3) Obtain Plant Species name: 
- This is fulfilled through the ***awk*** command.

4) Obtain Unique Species name: 
- This is fulfilled through the ***sort*** command.

5) Obtain only Species name, no Numerical values: 
- This is fulfilled through the ***grep*** command.

## Expected Output
- For the expected output, we will hope to see the **genuses** and **species** names that fulfilled 
the requirements set forth in our instructions.

Our Final Output is as follows:

- Anomobryum auratum
- Artemisia californica
- Bryum argenteum
- Chlorococcum oleofaciens
- Crassula aquatica
- Gemmabryum dichotomum
- Hormotilopsis gelatinosa
- Interfilum massjukiae
- Pseudochlorella signiensis
- Ptychostomum funkii
- Tetracystis pampae

These steps can be found within the Command_Scripts file. Specifically, the final output can be found within Data_Output/README_Week10_Data.txt.

# References
Bocci, Gionata. "TR8: An R Package for Easily Retrieving Plant Species Traits."
        Methods in Ecology and Evolution 6, no. 3 (April 10, 2019): 1-26.
        doi:10.1111/2041-210x.12327.

# Authors
Nicole Diaz

       B.S. in Biology, expected June 2021, UCLA
       
        nicolediaz1@g.ucla.edu
Jordan Holmes

        B.S. in Biology, expected June 2020, UCLA
        jordannholmes@g.ucla.edu

# Acknowledgements
We would like to thank Dr. Emily Curd and Daniel Chavez for their guidance and suggestions. 


