# Vignette
This Vignette Directory includes the following:

## Hoffman2_R
-This directory contains the neccessary files to run the PITA program, assuming the TR8 package properly installs and loads within R.

### Commands.sh: 
- Commands run on a sample dataset to extract complete Genus, Species names and create a user friendly table of traits associated with found Genus, Species.
- This example its completes commands on Test_Set.txt.

### Expected_Output_Bash.txt:
- The list of unique Genus, Species names extracted from the sample dataset after running Command.sh. This list will be title NewData60.txt in the terminal after Commands.sh is run. This signifies the final Genus, Species list that will be used for TR8 analysis.

### RScript.R
- The list of R commands to be run in Commands.sh, which will allow the entire program to run in shell.

### Test_Set.txt: 
- A sample dataset in the format required for PITA to work.
- ***NOTE:*** The dataset included is the exact one we ran for our program. Since it is only 150 lines and gives an output of 9 Genus, Species names, we decided to provide the complete dataset to ensure a respectable output was provided for users trying out the program.

## Hoffman2_RStudio
-This directory contains the neccessary files to run the PITA program, assuming the TR8 package does not properly install or load within R, forcing the user to utilize RStudio for TR8 analysis.

### Commands.sh: 
- Commands run on a sample dataset to extract complete Genus, Species names.
- This example completes its commands on Test_Set.txt.

### Expected_Output_Bash.txt:
- The list of unique Genus, Species names extracted from the sample dataset after running Command.sh. This list will be title NewData60.txt in the terminal after Commands.sh is run. This signifies the final Genus, Species list that will be used for trait analysis.

### RStudio_Analysis.Rmd: 
- List of commands to be run in RStudio, if user must or prefers to use over running in Hoffman2. This will provide an output, shown in FinalProject/Vignette/RStudio_Output.md.

### RStudio_Output.md: 
- Example output table, when run in RStudio. The traits provided were user chosen, and can be altered at each user's discretion.

### Test_Set.txt: 
- A sample dataset in the format required for PITA to work.
- ***NOTE:*** The dataset included is the exact one we ran for our program. Since it is only 150 lines and gives an output of 9 Genus, Species names, we decided to provide the complete dataset to ensure a respectable output was provided for users trying out the program.

# Running PITA - Sample Datatset
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
    sh Commands.sh Test_Script.txt
```

# Expected Program Output
After the program has finished running, the output file will consist of a cvs table with the name of the Genus, Species. Trait data, chosen by the user, will be printed for each of the Genus, Species to fill in and complete the table. It is possible some Genus, Species will not have data reported for every desired traits. This will be denoted with 'NA'.
