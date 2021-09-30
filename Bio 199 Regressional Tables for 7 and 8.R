### Bio 199 Regression Test for Tables 7 and 8

####Set working directory to the desktop and check it
setwd("/Users/KeonMoghaddam/Desktop/")
getwd()

###Read in the data for experiment 1 and take the means of each subset
EXP1.DATA <- read.csv(file="Stroke Survey Answers - Survey Results.csv", header=TRUE, sep=",", na.strings = "NA")

#Look at it, make sure it makes sense!
View(EXP1.DATA)

#Change FACTORS into Numeric for AGE 

EXP1.DATA$ Age <-as.numeric(EXP1.DATA$ Age)

#Change FACTORS into Numeric for Poverty Rate
EXP1.DATA$ Poverty.Rate <-as.numeric(EXP1.DATA$ Poverty.Rate )

#Change FACTORS into Numeric for Question 8
EXP1.DATA$ X.8..2.types.of.stroke <-as.numeric (EXP1.DATA$ X.8..2.types.of.stroke )

###Analysis of Tables 7 and 8

#Analyze data

#First check the structure of the data to make sure the dependent variable is quantitative (numeric or integer) and that the independent variable seed size and group and categorical 
str(EXP1.DATA)

#Change FACTORS into Numeric for Question 2 Correct Answer Column

EXP1.DATA$ X.2.B.breast.ca <-as.numeric(EXP1.DATA$ X.2.B.breast.ca)
#Result: [Everything is fine].

#RVALUE FOR linear Regression Analysis to see If Correct Answer for 2 (STROKE) was affected by Age and Survey Location
test.results<-lm( X.2.B.breast.ca ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

test.results<-lm(X.2.B.breast.ca ~ Age + Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
#Results: [Age P value = 0.303 ; Survey Location = 0.531 ; Age + Survey Location = 0.267; R^2 = 0.134 ;P values were not significant.]

#RVALUE FOR linear Regression Analysis to see If Correct Answer for 2 (STROKE) was affected by Age and Poverty Rate
test.results<-lm( X.2.B.breast.ca ~ Age + Poverty.Rate + Age*Poverty.Rate, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Results: [0.115 = P value for Age (not significant); 0.337= P value for Poverty Rate ; 0.0387 = P value for both together ; low for Age:Poverty Rate]

#RValue For Linear Regression Analysis to see if Composite Score of 5 (Signs to Decrease Stroke/Table 7) is affected by Age and Survey Location. 
test.results<-lm(X.5.Comp..Score ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

#Explanation of Regression Line: [ Knowledge of Modifiable Risk Factors by Age:This testing between the whole population and their Composite Score for 5 to see if the testing among the whole population and their accompanying ages and Played a factor into their answering. ]
#Result: [Comp Score in relation to Age of Total Population was 0.04200, showing significance.Also SURVEY lOCATION WAS 0.00565, also significant. However our Regression value was close to 0.2 and our p value was 0.23 for Age and Survey Location together affecting Question 5 Composite Score, showing that both together does not play a factor but individually they do.]

#RValue For Linear Regression Analysis to see if Composite Score of 5 (Signs to Decrease Stroke) is affected by Age and Poverty Rate. 
test.results<-lm(X.5.Comp..Score ~ Age + Poverty.Rate + Age*Poverty.Rate, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

#Result: [Comp Score OF Question 5 in relation to Age of Total Population was 0.04090, showing significance.Also Poverty Rate WAS 0.0015, also significant. However our Regression value was close to 0.02 and our p value was 0.73 for Age and X poverty together affecting Question 5 Composite Score, showing that both together does not play a factor but individually they do.]

#RValue For TABLE 8 Linear Regression Analysis to see if Composite Score of 6 (Signs to Decrease Stroke) is affected by Age and Survey Location. 
test.results<-lm(X.6.Comp..Score ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Result: [P value of Age in relation to Question 6 was 0.01138 showing that there was significance, P value of Survey Location in relation to Question 6 was 1.35e-06 showing significance, Age:Survey Location affecting Question 6 was significant. R2 - 0.25, not strong.]

#R value for Table 6 Row 3 (Awareness of Stroke Type) affected by Age + Poverty Rate
test.results<-lm(X.6.Comp..Score ~ Age + Poverty.Rate + Age*Poverty.Rate, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Explanation of Regression Line: [Knowledge of at least a sole warning sign of stroke among women by age, and seeing how each factor within each individual of the population answer choices were varied due to chance and not bias or any confounding variable (P value <0.05)]
#Results: [P value for Age in relation to Question 6 was 0.01768,, showing that there was significance. Survey location was 0.26214 also showing that Survey Location was not signficant in affecting the answer choice for Table 8. Both together, p value = 0.00427, showing there was signfificance.  Regression value shows that 0.023, not a strong linear trend between both, but does show that Age and Survey Location together is p value 0.00861 ], showing that there was significance with both Age and Survey location affecting how people answered question 6

#RValue For TABLE 8 Linear Regression Analysis to see if Composite Score of 6 (Signs to Decrease Stroke) is affected by Age and Survey Location. 
test.results<-lm(X.6.Comp..Score ~ Age + Poverty.Rate + Age*Poverty.Rate, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Results: [P value for Age in relation to Question 6 was 0.0508, showing that there was significance. Regression value shows that 0.17, very weak regressional relationship between both, but does show that Age and Survey Location together is p value 0.0123, showing that both factors together do have significance in affecting question 6 composite Score ].

#RValue for Question 8 For Age and Survey Location together
test.results<-lm(X.8..2.types.of.stroke ~ Age + Survey.Location + Age*Survey.Location, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out

#Results: [Pvalue for Age in relation to Question 8 was 0.00726, P value for Survey Location in relation to Question 8 WAS 0.00191, was significant; P value for both affecting Question 8, was 0.01532, significant. R^2= 0.21, not strong]
#RValue Question 8= age and poverty
test.results<-lm(X.8..2.types.of.stroke ~ Age + Poverty.Rate + Age*Poverty.Rate, data=EXP1.DATA)
summary(aov(test.results))
r2out<-paste("R2 = ",summary(test.results)$r.squared)
r2out
#Results:

#Graph For Question 5, Poverty Rate vs % Correct
plot(X.5.Comp..Score ~ Poverty.Rate, data=EXP1.DATA, main="Composite Score Q5 vs Poverty Rate", xlab="Poverty Rate (%)", ylab="Composite Score for Q5")
abline(lm(X.5.Comp..Score ~ Poverty.Rate, data=EXP1.DATA), col="red", lty=3) 

#Graph For Question 5, Age vs % Correct
plot(X.5.Comp..Score ~ Age, data=EXP1.DATA, main="Composite Score Q5 vs Age", xlab="Age (Years)", ylab="Composite Score for Q5")
abline(lm(X.5.Comp..Score ~ Age, data=EXP1.DATA), col="red", lty=3) 

#Graph For Question 6, Age vs % Correct
plot(X.6.Comp..Score ~ Age, data=EXP1.DATA, main="Composite Score Q6 vs Age", xlab="Age (Years)", ylab="Composite Score for Q6")
abline(lm(X.6.Comp..Score ~ Age, data=EXP1.DATA), col="red", lty=3)

#Graph for Question 6, Poverty rate vs %Correct
plot(Poverty.Rate ~ X.6.Comp..Score, data=EXP1.DATA, main="Composite Score Q6 vs Poverty Rate", xlab="Poverty Rate (%)", ylab="Composite Score for Q6")
abline(lm(Poverty.Rate ~ X.6.Comp..Score, data=EXP1.DATA), col="red", lty=3)


ggplot(EXP1.DATA.SUMMARY, aes(x = treatment, y = mean)) +
  geom_bar(position = position_dodge(), stat="identity", fill="grey") +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se),width=.3) +
  labs(title="TITLE",x="X AXIS", y="Y AXIS")+
  theme_bw() + theme(panel.grid.major = element_blank())

library(plotly)

EXP1.DATA <- read.csv()

p <- plot_ly(data, x = ~ X.6..Score.Age, y = ~ Age, type = 'scatter', mode = 'markers',
             marker = list(size = 5, opacity = 0.5)) %>%
  layout(title = 'Gender Gap in Earnings per University',
         xaxis = list(showgrid = FALSE),
         yaxis = list(showgrid = FALSE))