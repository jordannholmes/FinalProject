install.packages("TR8", dependencies = TRUE)

library(TR8)

install.packages("devtools")

library(devtools)

dev_mode(on=T)

install_github("GioBo/TR8",ref="master")

library(TR8)

my_species<-c("Anomobryum auratum", "Artemisia californica", "Bryum argenteum", "Chlorococcum oleofaciens", "Crassula aquatica", "Gemmabryum dichotomum", "Hormotilopsis gelatinosa", "Interfilum massjukiae", "Pseudochlorella signiensis", "Ptychostomum funkii", "Tetracystis pampae", "Apium graveolens","Holcus mollis","Lathyrus sylvestris", "Potentilla anserina", "Avena fatua")

my_traits<-c("h_max", "h_min", "leaf_size", "age_first_flowering", "le_long")

my_data<-tr8(species_list = my_species, download_list = my_traits)

print(my_data)
