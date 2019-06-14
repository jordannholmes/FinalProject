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
This program takes publicly available databases and allows the user to easily retrieve trait data of a desired plant species. The TR8 program can be utilized by plant ecologists when an accumulation of 'traits' data about plant species needs to be collected from various databases. The available databases where TR8 obtains the functional traits data for plant species include the following: 

- Biolflor (Klotz, Kuhn & Durka 2002)
- BROT (B. Paula and J.G. Pausas 2013)
- Catminat (Julve 2014)
- ECOFLORA (Fitter & Peat 1994)
- Ellenberg values for Italian Flora (Pignatti, Menegoni & Pietrosanti 2005)
- Flowering period for Italian Flora (Pignatti, Menegoni & Pietrosanti 2005, data from http://luirig.altervista.org/)
- LEDA traitbase (Kleyer et al. 2008)
- MycoFlor (Hempel et al. 2013)
- Mycorrhizal intensity databases (Akhmetzhanova et al. 2012)

The main purpose of this program is to obtain data from the TR8 package in the R software and format in such a way that makes it easier for a user to find and organize information pertaining to a trait of a specific plant species. For the purposes of this program, the input data is an eDNA / anacapa output table.

## Dependencies
This program has two parts, both of which can be run in Shell:
1) Hoffman2
2) R

## Program Workflow
The flow of the program is as follows:

1) Reads the input file of the Test_Set.txt (within Vignette Directory) provided by Github.

2) Recognizes and removes single semicolons and blank spaces from OriginalData.txt. 

3) Tabs between remaining names of taxonomy information. Useful in determining the Genus and Species names of each sample.

4) Deletes all information other that the Genus and Species names.

5) Deletes any duplicate species input. Lists only uniques Genus and Species combinations.

6) R / RStudio: Creates a table of user-specified relevant ecological information (maximum height, minimum height, etc.) for each unique genus and species.

## Instructions
Our ultimate goal is to obtain only the unique genus and species combinations. After this
we will input this data to RStudio. Steps in Shell are as follows:

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
For the expected output, a file is created with a list of unique **genuses** and **species** names taken from the dataset.

Our Final Output file prints the species as follows:

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

These steps can be found within the Weekly_Command_Scripts file. Specifically, the final output file can be found within Weekly_Data_Output/README_Week10_Data.txt or Vignette/Expected_Output.txt.

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

The LEDA Traitbase: Kleyer, M., Bekker, R., Knevel, I., Bakker, J., Thompson, K., Sonnenschein, M. et al. (2008) The LEDA Traitbase: a database of life-history traits of the Northwest European flora. Journal of Ecology, 96, 1266–1274. http://www.leda-traitbase.org/LEDAportal/ 

## Acknowledgements
We would like to thank Dr. Emily Curd and Daniel Chavez for their suggestions and guidance towards the completion of this project.

## Citing PITA
Coming Soon


