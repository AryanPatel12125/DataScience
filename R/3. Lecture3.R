# Importing File in R and Hypothesis testing

# to get the current working directory of the file you are working on
getwd()

#to set the current working directory of the file you 
#are working on is called setwd
setwd()

setwd("C:/Users/aryan/OneDrive/Documents/DATA SCIENCE/R")
# new path has been set

# import csv file for now
data = read.csv('Sales100.csv')


# now we are going to see how to import excel files
library(readxl)
dataxl = read_excel("Sales100.xlsx")
View(dataxl)
nrow(dataxl)
ncol(dataxl)


dataxl$Order_Priority
dataxl$Total_Revenue

profit = data$Total_Profit
mean(profit)
sd(profit)
median(profit)
max(profit)
min(profit)
sum(data$Total_Profit)
range(data$Total_Profit)

table(data$Region)
table(data$Sales_Channel)
#Headers
names(data)

#Find length of any vector, Column or object
# Vector - length(b)
length(data$Country)
length(unique(data$Country))

#Total Count of Unique values in Single Column

length(table(data$Sales_Channel))
length(unique(data$Sales_Channel))

unique(data$Sales_Channel)


#Hypothesis Testing
#Anova or t-test
if(length(table(data$Sales_Channel)) > 2){
    print("Anova")
} else {
    print("ttest")
}

#ttest
ttest_rel=t.test(data$Total_Revenue ~ data$Sales_Channel ,data1 = data)
ttest_rel
ttest_pvalue=ttest_rel$p.value
ttest_pvalue

if(ttest_pvalue < 0.05){
  print("sig difference")
}else{
  print("not sig difference")
}
attach(data)

#anova
anova_rel = aov(Total_Profit ~ Item_Type)
summary(anova_rel)
anova_pvalue = anova(anova_rel)$'Pr(>F)'[1]
anova_pvalue

if(anova_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}

anova_rel = aov(data$Total_Profit ~ data$Item_Type+data$Order_Priority)
summary(anova_rel)
anova_pvalue = anova(anova_rel)$'Pr(>F)'[1]
anova_pvalue
if(anova_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}

#install.packages("stringr")
install.packages("stringr")
library(stringr)
w1=word(item_type,1,sep = "\\-")
w2=word(item_type,2,sep = "\\-")
w1
w2  

#chi Square
chi_rel=chisq.test(data$Region,data$Country)
chi_rel
chi_pvalue= chi_rel$p.value
chi_pvalue

if(chi_pvalue < 0.05){
  print("sig")
}else{
  print("not sig")
}
View(data)
