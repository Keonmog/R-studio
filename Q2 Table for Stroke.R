#Enter Data
Table6 <- data.frame(c(58,27,15),c(43,37,20),c(59,32,9))
#assign column and row names
colnames(Table6) <- list ('age_18-40', 'ages_41-64', 'ages_65+')
rownames(Table6) <- list ('Hospitalization Secondary To breast Cancer', 'Hospitalization secondary to stroke', 'DONT KNOW')
#view table
Table6
chisq.test(Table6) 

