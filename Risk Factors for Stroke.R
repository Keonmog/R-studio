#Enter Data
Table3 <- data.frame(c(20,11,16,50),c(24,14,17,54),c(34,19,21,74),c(31,20,18,66),c(37,16,24,70),c(38,17,21,70),c(28,26,38,87),c(22,24,27,90),c(50,25,17,92))
#assign column and row names
colnames(Table3) <- list ('age_18-24','ages_25-31','ages_32-38','ages_39-45','ages_46-51','ages_52-58','ages_59-65','ages_66-72','ages_73-80')
rownames(Table3) <- list ('Modified Stroke Risk Factors', 'Warning Signs of Stroke', 'Awareness of Stroke Type', 'Know someone who experienced stroke')
#view table
Table3
chisq.test(Table3) 