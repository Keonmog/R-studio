#Enter Data
Table10 <- data.frame(c(84,75,27),c(84,82,37),c(91,79,32))
#assign column and row names
colnames(Table10) <- list ('age_18-31', 'ages_41-64','ages65+')
rownames(Table10) <- list ('Blood pressure control', 'Smoking Cessation', 'Adequate diabetes management')
#view table
Table10
chisq.test(Table10) 

