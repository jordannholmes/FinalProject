# Plants In Trait Analysis (PITA)

## Authors
Nicole Diaz

       B.S. in Biology, expected June 2021, UCLA
       nicolediaz1@g.ucla.edu
Jordan Holmes

        B.S. in Biology, expected June 2020, UCLA
        jordannholmes@g.ucla.edu

## Introduction

### Background
This program takes publicly available databases and allows the user to easily retrieve trait data of a desired plant species. The TR8 program can be utilized by plant ecologists when an accumulation of 'traits' data about plant species needs to be collected from various databases. The available databases where TR8 obtains the functional traits data for plant species are: Biolflor, The Ecological Flora of the British Isles, LEDA traitbase, Ellenberg values for Italian Flora, Mycorrhizal intensity databases, Catminat, BROT, PLANTS, Jepson Flora Project. The main purpose of this program is to obtain data from the TR8 package in the R software and format in such a way that makes it easier for a user to find information pertaining to a component or trait of a specific plant species. For the purposes of this program, the input data is an eDNA / anacapa output table.

## Dependencies
This program has two parts:
1) Hoffman2
2) R

## Program Workflow
The flow of the program is as follows:

1) Reads the input file of the Test_Set.txt (within Vignette Directory) provided by Github.

2) Recognizes and removes single semicolons and blank spaces from OriginalData.txt. 

3) Tabs between remaining names of taxonomy information. Useful in determining the Genus and Species names of each sample.

4) Deletes all information other that the Genus and Species names.

5) Deletes any duplicate species input. Lists only uniques Genus and Species combinations.

6) RStudio: Creates a table of user-specified relevant ecological information for each unique genus and species with TR8 package.

### Install TR8
``` {r}
install.packages("TR8")
```

### Install GitHub for Pushing Analysis
``` {r}
install_github("roponsci/TR8")
```

### Load Desired Library
``` {r}
library("TR8")
```

## Instructions
Our ultimate goal is to obtain only the unique genus and species combinations. After this
we will input this data to RStudio. Steps are as follows:

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
-The expercted output of this program is a list of ... generated by the program.

- For the expected output, we will hope to see the **genuses** and **species** names that fulfilled the requirements set forth in our instructions. 

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

These steps can be found within the Weekly_Command_Scripts file. Specifically, the final output can be found within Weekly_Data_Output/README_Week10_Data.txt or Vignette/Expected_Output.txt

## References
Bocci, Gionata. "TR8: An R Package for Easily Retrieving Plant Species Traits." Methods in Ecology and Evolution 6, no. 3 (April 10, 2019): 1-26. doi:10.1111/2041-210x.12327.

Fitter, A. H. and Peat, H. J., 1994, The Ecological Flora Database, J. Ecol., 82,: 415-425. http://www.ecoflora.co.uk

Kleyer,M., Bekker, R.M, Knevel, I.C., Bakker, J.P., Thompson, K., Sonnenschein, M., Poschlod, P., Van Groenendael, J.M., Klimes, L., Klinesova, J., Klotz, S., Rusch, G.M., Hermy, M., Adriaens, D., Boedeltje, G., Bossuyt, B., Dannemann, A., Endels, P., Gotzenberber, L., Hodgson, J.G., Jackel, A-K., Kuhn, I., Kunzmann, D., Ozinga, W.A., Romermann, C., Stadler, M., Schlegelmilch, J., Steedem, H.J., Tackenberg, O., Wilmann, B., Cornelissen, J.H.C., Ericksson, O., Garnier, E., Peco, B. (2008): The LEDA Traitbase: A database of life-history traits of Northwest European flora. Journal of Ecology 96: 1266-1274.
Last Update: October 28th, 2008. https://uol.de/en/biology/landeco/research/projects/leda/

Klotz, S., Kühn, I. & Durka, W. [Hrsg.] (2002): BIOLFLOR - Eine Datenbank zu biologisch-ökologischen Merkmalen der Gefäßpflanzen in Deutschland. - Schriftenreihe für Vegetationskunde 38. Bonn: Bundesamt für Naturschutz. https://www.ufz.de/biolflor/index.jsp

## Acknowledgements
We would like to thank Dr. Emily Curd and Daniel Chavez for their suggestions and guidance towards the completion of this project.

## Citing PITA
Coming Soon


