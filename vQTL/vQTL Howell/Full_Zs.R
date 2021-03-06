library("tidyverse")
setwd("C:/Users/Thomas/Documents/GitHub/Stapleton-Lab/vQTL Howell")
dat = read_csv(file = "Heat Stress.csv")
full <- read_delim("AllZeaGBSv27_imputed_taxa.txt", delim = "\t")
head(full$`05-397:250007467`)
pert <- which(substr(full$`05-397:250007467`,1,9) %in% dat$taxa_NAM_RIL_ID)
keep <- as.data.frame(full$`05-397:250007467`[pert])
write_delim(keep, path = "Full_Z_Names.txt", delim = "\n" ,col_names = F)
