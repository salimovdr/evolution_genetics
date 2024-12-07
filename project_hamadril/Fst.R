install.packages("pegas")
library(pegas)

install.packages("adegenet")
library(adegenet)

install.packages("hierfstat")
library(hierfstat)

dna_data <- read.dna("~/U_Sirius/evolution_genetics/project_hamadril/data/dloop_alignment_wo_outgroup.fas", format = "fasta")

groups <- ifelse(grepl("Africa", rownames(dna_data)), "Africa", "Asia")
genind_obj <- DNAbin2genind(dna_data, pop = as.factor(groups))
hierfstat_data <- genind2hierfstat(genind_obj)
fst_result <- varcomp.glob(hierfstat_data)
print(fst_result$Fst)

head(hierfstat_data)
str(hierfstat_data)
fst_result <- varcomp.glob(hierfstat_data)
