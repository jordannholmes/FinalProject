---
title: "R Notebook"
output: html_notebook
---
```{r}
install.packages("TR8", dependencies = TRUE)
```
```{r}
library(TR8)
```
```{r}
install.packages("devtools")
```
```{r}
library(devtools)
```
```{r}
dev_mode(on=T)
```
```{r}
install_github("GioBo/TR8",ref="master")
```
```{r}
library(TR8)
```
````{r}
my_species<-c("Anomobryum auratum", "Artemisia californica", "Bryum argenteum", "Chlorococcum oleofaciens", "Crassula aquatica", "Gemmabryum dichotomum", "Hormotilopsis gelatinosa", "Interfilum massjukiae", "Pseudochlorella signiensis", "Ptychostomum funkii", "Tetracystis pampae", "Apium graveolens","Holcus mollis","Lathyrus sylvestris", "Potentilla anserina", "Avena fatua")
```
```{r}
my_traits<-c("h_max", "h_min", "leaf_size", "age_first_flowering", "le_long")
```
```{r}
my_data<-tr8(species_list = my_species, download_list = my_traits)
```
```{r}
print(my_data)
```


##

| **Plant Genus Species** | **h_max** | **h_min** | **le_long** | **age_first_flowering** | ** leaf_size ** |
| Anomobryum auratum | NA | NA | NA | NA | NA |
| Apium graveolens | 100 | 30 | NA | 1-5 Years |
| Artemisia californica | | | | |
| Avena fatua | | | | |
| Bryum argenteum |
| Chlorococcum oleofaciens |
| Crassula aquatica |
| Gemmabryum dichotomum	|
| Holcus mollis |
| Hormotilopsis gelatinosa |
| Interfilum massjukiae |
| Lathyrus sylvestris |
| Potentilla anserina |
| Pseudochlorella signiensis |
| Ptychostomum funkii |
| Tetracystis pampae |

