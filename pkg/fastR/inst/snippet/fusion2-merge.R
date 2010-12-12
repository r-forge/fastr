fusion2m <- merge(fusion2, pheno, by='id', all.x=FALSE, all.y=FALSE)
xtabs(~t2d + genotype, fusion2m)
