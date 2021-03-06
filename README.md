# Plants In Trait Analysis (PITA)
https://zenodo.org/record/3246685#.XQSRZG9Kg6U

## Authors
Nicole Diaz (nicolediaz1@g.ucla.edu)

Jordan Holmes (jordannholmes@g.ucla.edu)

## Introduction

### Background
This project utilizes data found with Environmental DNA (eDNA) analysis, specifically of plant species. This source of DNA serves as a type of genetic marker that can be used to identify specific plant species based on traces of their unique genetic material. By identifying the plant species, ecologists have the ability to monitor biodiversity and practice proper conservation tactics to preserve plant species in a tested area. eDNA of plants can be found in the forms of pollen, spores, scales, etc. in geographic areas of study. For the purposes of this program, the input data is an eDNA / anacapa output table consisting of 149 sample entries.

This program takes publicly available databases and allows the user to easily retrieve trait data of a plant species found within a dataset. The TR8 program within R can be utilized by plant ecologists when an accumulation of trait data about plant species needs to be collected from various databases at once. The available databases where TR8 obtains the functional data for plant species includes the following: 

- Biolflor (Klotz, Kuhn & Durka 2002)
- BROT (B. Paula and J.G. Pausas 2013)
- Catminat (Julve 2014)
- ECOFLORA (Fitter & Peat 1994)
- Ellenberg values for Italian Flora (Pignatti, Menegoni & Pietrosanti 2005)
- Flowering period for Italian Flora (Pignatti, Menegoni & Pietrosanti 2005, data from http://luirig.altervista.org/)
- LEDA traitbase (Kleyer et al. 2008)
- MycoFlor (Hempel et al. 2013)
- Mycorrhizal intensity databases (Akhmetzhanova et al. 2012)

The main purpose of this program is to obtain and organize data about species found within an eDNA / anacapa output table. From there, the program will utilize the TR8 package in the R software to find desired trait data of each species found and format this information into a table. This program is overall used to simplify, identify, and organize trait data pertaining to multiple plant species all in one program.

## Dependencies
This project has two required program dependencies:
1) Hoffman2: Shared cluster system, utilized by the Universites of California
2) R: Scripting language (R Core Team 2018)

This program has one required file, located within Github:
1) Commands.sh: Bash script containing the code, used for organizing a dataset to specify Genus, Species and creating a csv table with the desired trait data of identified species. Found within ~/FinalProject/Vignette/Hoffman2_R.

## Program Workflow
The flow of the program is as follows:

1) Reads the input file of the Test_Set.txt provided within Github (within Vignette Directory).

2) Recognizes and removes single semicolons and blank spaces from Test_Set.txt. 

3) Tabs between remaining names of taxonomy information. Useful in determining the Genus, Species names of each sample.

4) Deletes all information other than the Genus, Species names.

5) Deletes any duplicate Genus, Species input. Lists only unique Genus, Species combinations.

6) R / RStudio: Loads R. Also installs and loads the necessary packages: TR8 and devtools.

7) Defines variable 'my_species' with the list of Genus, Species found from the dataset analysis done in the bash script.

8) Defines variable 'my_traits' with a list of desired traits, chosen by the user, of the Genus, Species list.

9) Creates a table of user-specified relevant trait information (maximum height, minimum height, etc.) for each unique Genus, Species.

## Install TR8 and devtools

If done in Hoffman 2: User must load R within Hoffman2. This should be done prior to running the program to ensure the bash script is run in its entirety. These steps are also included within Commands.sh. However, it is suggeted to install these packages prior to running Commands.sh to ensure that each package is properly installed. If not, see FinalProject/Vignette/Hoffman2_RStudio.

***Note:*** Commands.sh cannot be run in the R language. User must return to shell in order to run the PITA program.
```
  module load R
  R
      > install.packages("TR8")
      > install.packages("devtools")
```
If done in RStudio, using directory Hoffman2_RStudio: User does not have to load R, but still must install the TR8 and devtools packages for analysis. These steps are also included in FinalProject/Vignette/Hoffman2_RStudio/RStudio_Analysis.Rmd. It is suggeted to install these packages prior to running the commands within RStudio_Analysis.Rmd, however, to ensure that each package is properly installed.

## Choosing Traits for Analysis
In order to see the list of possible traits that can be used for analysis, run the following command in R. If necessary, such as when working in Hoffman2, load R (see instructions above). 

This list will include the short code to the trait name, the decription of the trait name, and the database the trait information will be pulled from.
```
library('TR8')
head(available_tr8)
```
***Note:*** This can only be done if the TR8 package was suggessful installed and loaded in R. If working in RStudio, the TR8 package still must be installed and loaded. The same commands are applicable to load available_tr8.

## Instructions for Running the Program

1) Log into the UCLA Hoffman2 server. The server will allow the user to utilize Bash.

2) Clone the PITA directory into Hoffman2 with the following command:
```
   git clone https://github.com/jordannholmes/FinalProject.git
```
3) Use the command below to enter the FinalProject/Vignette directory.
```
   cd FinalProject/Vignette
```
4) To run the PITA program, use the command below. This will run the command script on the sample data and produce an output.
```
   sh Commands.sh Test_Set.txt
```  
***NOTE:*** This can only be done if the user is within the ~/FinalProject/Vignette/Hoffman2_R directory within Hoffman2.

## Expected Output

### Bash Script
For the expected output of the bash script, six text files should be created after running the program. Each of the files will have the format NewData#0.txt. 

A list of unique Genus, Species names extracted from the dataset will be in the last text file, titled NewData60.txt.

For Reference: Our Final Output text file, within NewData60.txt, prints the species as follows:

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

### R Script
For the expected output of the R script, a csv table is created with the names of the Genus, Species. Trait data, chosen by the user, will be printed for each of the Genus, Species to complete the table. It is possible some Genus, Species will not have data reported for every desired traits. This will be denoted with 'NA'.

***NOTE:*** The Bash script and the R script are both found within FinalProject/Vignette/Hoffman2_R/Commands.sh. We have separated the Expected Output into two sections to specify the purposes of each. However, after the program has finished running, the expected output detailed in the R Script section will be the final product for the program.

### Difficulties with TR8 Package
There have been reported issues with the installation of the TR8 package and its dependencies when attempting to install in R. If these occur, it is suggested to run the Bash script alone and do the R anaylsis within RStudio. The necessary files can be found within FinalProject/Vignette/Hoffman2_RStudio. This directory contains the neccessary files to run the PITA program, assuming the TR8 package properly installs and loads within R.

The neccesary steps for RStudio analysis are included in FinalProject/Vignette/Hoffman2_RStudio on this GitHub page. We predict this issue occurs due to an incompatibility between Hoffman2 / R and the TR8 package and are currently attempting to solve such issues. Our goal if for PITA to be accessible to all interested users.

## References
Biolflor: Klotz, S., Kuhn, I., Durka, W. (2002) BIOLFLOR - Eine Datenbank zu biologi- € sch-okologischen Merkmalen zur Flora von Deutschland. € Schriftenreihe fur€ Vegetationskunde, 38, 1–333. https://www.ufz.de/biolflor/index.jsp

Bocci, Gionata. "TR8: An R Package for Easily Retrieving Plant Species Traits." Methods in Ecology and Evolution 6, no. 3 (April 10, 2019): 1-26. doi:10.1111/2041-210x.12327.

BROT: S. Paula and J.G. Pausas. BROT: a plant trait database for Mediterranean Basin species, 2013. Version 2013.06. https://www.uv.es/jgpausas/brot.htm

Catminat: P. Julve. Baseflor. index botanique, ´ecologique et chorologique de la flore de france. http://perso.wanadoo.fr/philippe.julve/catminat.htm, 26 November 2014.

ECOFLORA: Fitter, A.H. & Peat, H.J. (1994) The Ecological Flora Database. Journal of Ecology, 82, 415–425. http://www.ecoflora.co.uk

Ellenberg values for Italian Flora: S. Pignatti, P. Menegoni, and S. Pietrosanti. Biondicazione attraverso le piante vascolari. Valori di indicazione secondo Ellenberg (Zeigerwerte) per le specie della Flora d’Italia. Braun-Blanquetia, 39:97, 2005.

Flowering period for Italian Flora: S. Pignatti, P. Menegoni, and S. Pietrosanti. Biondicazione attraverso le piante vascolari. Valori di indicazione secondo Ellenberg (Zeigerwerte) per le specie della Flora d’Italia. Braun-Blanquetia, 39:97, 2005. 

MycoFlor: Stefan Hempel, Lars G¨otzenberger, Ingolf Kuhn, Stefan G Michalski,Matthias C Rillig, Martin Zobel, and Mari Moora. Mycorrhizas in the Central European flora: relationships with plant life history traits and ecology. Ecology, 94(6):1389–1399, February 2013. http://www.esapubs.org/archive/ecol/E094/123/suppl-1.php

Mycorrhizal Intensity Databases: A.A. Akhmetzhanova, N. A. Soudzilovskaia, V. G. Onipchenko, W.K. Cornwell, V.A. Agafonov, I.A. Selivanov, and J. H.C. Cornelissen. A rediscovered treasure: mycorrhizal intensity database for 3000 vascular plant
species across the former Soviet Union: Ecological archives e093-059. Ecology, 93(3):689–690, 2012.

R Core Team. 2014. R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL http://www.R-project.org/.

The LEDA Traitbase: Kleyer, M., Bekker, R., Knevel, I., Bakker, J., Thompson, K., Sonnenschein, M. et al. (2008) The LEDA Traitbase: a database of life-history traits of the Northwest European flora. Journal of Ecology, 96, 1266–1274. http://www.leda-traitbase.org/LEDAportal/ 

## Acknowledgements
We would like to thank Dr. Emily Curd and Daniel Chavez for their suggestions and guidance towards the completion of this project.

## Citing PITA
See DOI: https://zenodo.org/record/3246685#.XQSRZG9Kg6U

