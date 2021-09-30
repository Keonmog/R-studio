#Enter Data
Table4 <- data.frame(c(62,71,65),c(59,68,77),c(71,74,79),c(72,76,76),c(64,82,75),c(70,77,93),c(77,72,93),c(78,78,58),c(58,83,79))
#assign column and row names
colnames(Table4) <- list ('age_18-24','ages_25-31','ages_32-38','ages_39-45','ages_46-51','ages_52-58','ages_59-65','ages_66-72','ages_73-80')
rownames(Table4) <- list ('Sudden Weakness of Face', 'Sudden Weakness of Limb', 'Slurred Speech')
#view table
Table4
chisq.test(Table4) 