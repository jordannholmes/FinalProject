Pseudocode for Final Project - Tr8 Plant Package

#Write a script utilizing 'sed' in order to separate the taxonomy categories (Kingdom, Phylum, Class, Order, Family, Genus, Species) listed for each species. This script will take out the semicolons and replace them with tabs, to create the space in between each column.

sed 's/;/\t/g' Plant_taxonomy_file.txt | sed 's/\.\./\t/g'


#Add titles to each column to specify the species' taxonomy categories by tabing on the first line of the data.

#Write a script to ignore and delete the space indicating no listed category name for a species. Utilize the restricted mode and the cut command to do so.

	#Restricted Mode: Don't read or write to any file not specified on the command line

		#Could also use -R, --restricted, -grep, or -awk.

#Write a script to sort the data alphabetically by the species name. Use the column number of the species name to do so.


#Open RStudio and install the TR8 Package. TR8 is used to download functional traits from a plant species database.

	#How to install a package into RStudio

		#Example Command: install.packages("TR8")

        #How to Install GitHub for pushing analysis

		#Example Command: install_github("roponsci/TR8")

        #How to download the specific TR8 package required for analysis

		#Example Command: library("TR8")

#Download the url to the website that contains valuable information about plants species. This will be used for analysis of the newly organized data.

	#Example Command: url<-"http://datadryad.org/bitstream/handle/+10255/dryad.65646/MEE-13-11-651R2_data.xlsx?sequence=1"

#Create a temporary file to store the data.

	#Example Command: tmp = tempfile(fileext = ".xlsx")

#Download the information provided by the url into the temporary file, for analysis.

	#Example Command: download.file(url = url, destfile = tmp)

#Write a script that specifies what database within the specified url will be used/pulled for analysis.

	#Could use Metadata, Vegdata, Envdata.

#Pull the information from the chosen database and push into the temporary file.

	#Example Command: env_data<-read_excel(path = tmp, sheet = "data.txt")       

#Choose variables we want to organize and analyze the data by.

	#Example Variables: Leaf area, Leaf mass


