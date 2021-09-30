TABLE6: 
#Enter Data
Table8 <- data.frame(c(28,15,16,58),c(35,18,21,75),c(27,28,27,93))
#assign column and row names
colnames(Table8) <- list ('age_18-30', 'ages_41-64','ages_65')
rownames(Table8) <- list ('Modified Stroke Risk Factors', 'Warning Signs of Stroke', 'Awareness of stroke type (ischemic, hemorrhagic)', 'Know someone who experienced a stroke')
#view table
Table8
chisq.test(Table8)