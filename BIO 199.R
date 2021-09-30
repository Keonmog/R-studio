#Enter Data
Table5 <- data.frame(c(58,47,51),c(24,37,33),c(18,24,19))
#assign column and row names
colnames(Table5) <- list ('age_18-31', 'ages_32-50','ages_50+')
rownames(Table5) <- list ('Hospitalization Secondary to Breast Cancer', 'Hospitalization Secondary to Stroke', 'Responded “Don’t Know')
#view table
Table5
chisq.test(Table5) 

