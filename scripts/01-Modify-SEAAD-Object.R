library(Seurat)
library(data.table)
library(dplyr)
library(Matrix)

# 1. Load the RDS Object (SEAAD DLPFC) ####
seaad <- readRDS('/projectnb/tcwlab/LabMember/adpelle1/projects/singlecell-brain/outputs/01-SEAAD_data/SEAAD_DLPFC_43k.rds')

out <- 'outputs/01-Modify-SEAAD-Object/'
dir.create(out)

saveRDS(seaad, file = paste0(out, 'SEAAD_DLPFC.rds'))

# 2. Edit the RDS Object in order to make cell_type labeling simpler ####

unique(seaad@meta.data$cell_type)
