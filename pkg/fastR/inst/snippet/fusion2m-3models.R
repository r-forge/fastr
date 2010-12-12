chisq.test( xtabs(~t2d + genotype, fusion2m) )
chisq.test( xtabs(~t2d + (Cdose >=1), fusion2m) )
chisq.test( xtabs(~t2d + (Cdose <=1), fusion2m) )
