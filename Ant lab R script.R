### Bio 199 Regression Test for Tables 7 and 8

####Set working directory to the desktop and check it
setwd("/Users/KeonMoghaddam/Desktop/")
getwd()

###Read in the data for experiment 1 and take the means of each subset
EXP1.DATA <- read.csv(file="Stroke Survey Answers - Survey Results.csv", header=TRUE, sep=",", na.strings = "NA")

#Look at it, make sure it makes sense!
View(EXP1.DATA)

#Change FACTORS into Numeric for AGE 

EXP1.DATA$ Age<-as.numeric(EXP1.DATA$ Age)

#Change FACTORS into Numeric for Poverty Rate
EXP1.DATA$ X..Poverty<-as.numeric(EXP1.DATA$ X..Poverty)

###Analysis of Tables 7 and 8

#Analyze data

#First check the structure of the data to make sure the dependent variable is quantitative (numeric or integer) and that the independent variable seed size and group and categorical 
str(EXP1.DATA)
#Result: [Everything is fine].

#RValue For Linear Regression Analysis to see if Composite Score of 5 (Signs to Decrease Stroke/Table 7) is affected by Age and Survey Location. 
test.results<-lm(X.5.Comp..Score ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

#Explanation of Regression Line: [ Knowledge of Modifiable Risk Factors by Age:This testing between the whole population and their Composite Score for 5 to see if the testing among the whole population and their accompanying ages and Played a factor into their answering. ]
#Result: [Comp Score in relation to Age of Total Population was 0.03768, showing significance.Also SURVEY lOCATION WAS 0.00565, also significant. However our Regression value was close to 0.2 and our p value was 0.23 for Age and Survey Location together affecting Question 5 Composite Score, showing that both together does not play a factor but individually they do.]

#RValue For Linear Regression Analysis to see if Composite Score of 5 (Signs to Decrease Stroke) is affected by Age and Poverty Rate. 
test.results<-lm(X.5.Comp..Score ~ Age + X..Poverty + Age*X..Poverty, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

#Result: [Comp Score OF Question 5 in relation to Age of Total Population was 0.04090, showing significance.Also Poverty Rate WAS 0.0015, also significant. However our Regression value was close to 0.02 and our p value was 0.73 for Age and X poverty together affecting Question 5 Composite Score, showing that both together does not play a factor but individually they do.]

#RValue For TABLE 8 Linear Regression Analysis to see if Composite Score of 6 (Signs to Decrease Stroke) is affected by Age and Survey Location. 
test.results<-lm(X.6.Comp..Score ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Explanation of Regression Line: [Knowledge of at least a sole warning sign of stroke among women by age, and seeing how each factor within each individual of the population answer choices were varied due to chance and not bias or any confounding variable (P value <0.05)]
#Results: [P value for Age in relation to Question 6 was 0.03807, showing that there was significance. Survey location was 6.88e-07 also showing that Survey Location was signficant in affecting the answer choice for Table 8. Regression value shows that 0.23, not a strong linear trend between both, but does show that Age and Survey Location together is p value 0.00861 ], showing that there was significance with both Age and Survey location affecting how people answered question 6
#Perform the 2 factor ANOVA testing if The Composite Score (Knowledge of Stroke Signs) is affected by Age and Poverty Rate
test.results<-aov(X.6.Comp..Score ~ Age  + X..Poverty, data=EXP1.DATA)

#RValue For TABLE 8 Linear Regression Analysis to see if Composite Score of 6 (Signs to Decrease Stroke) is affected by Age and Survey Location. 
test.results<-lm(X.6.Comp..Score ~ Age + X..Poverty + Age*X..Poverty, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Results: [P value for Age in relation to Question 6 was 0.0508, showing that there was significance. Regression value shows that 0.17, very weak regressional relationship between both, but does show that Age and Survey Location together is p value 0.0123, showing that both factors together do have significance in affecting question 6 composite Score ].


