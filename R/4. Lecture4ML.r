#Machine learning
#x=independent variable(pridector) , y=dependent variable (target)
x= c(151,174,138,186,128,136,179,163,152,131)
y= c(63,81,56,91,47,57,76,72,62,48)


model=lm(y~x)

print(model)

plot(x,y,col="blue")
abline(model,col="red")

summary(model)


#multi-regression
data()
View(mtcars)
data1=mtcars

input=mtcars[,c("mpg","disp","hp","wt")]

model1=lm(mpg~.,input)


View(input)
model=lm(mpg~disp+hp+wt,data = input)
model=lm(mpg~disp+hp+wt,input)
print(model)
summary(model)

a=data.frame(disp=150,hp=92,wt=1.91)
result=predict(model,a)
cat("mileage:-",result)



#classification
#rpart :- for decision tree
#rose :-  package for classification
install.packages("ROSE")
library(ROSE)
install.packages("rpart")
library(rpart)
install.packages("rpart.plot")
library(rpart.plot)

data(hacide)
hacide.train
hacide.test
View(hacide.train)
dim(hacide.train)
View(hacide.test)
dim(hacide.test)
nrow(hacide.train)
nrow(hacide.test)

#data(hacide)
#Train data
View(as.data.frame(hacide.train))
table(hacide.train$cls)

#probability
prop.table(table(hacide.train$cls))

#Test Data
View(as.data.frame(hacide.test))
table(hacide.test$cls)
prop.table(table(hacide.test$cls))


#decision tree
treeimb = rpart(cls~x2+x1,data=hacide.train)
rpart.plot(treeimb)
print(treeimb)
summary(treeimb)

table(hacide.train$cls,predict(treeimb, type = "class"))
pre=predict(treeimb,newdata = hacide.test,type = "class")

#predicted class

View(pre)
table(hacide.test$cls,pre)


pre=predict(treeimb,newdata = hacide.test,type = "class")


#predicted class=0  expected loss=0.02  P(node) =1
#20/1000=0.02

#Node number 2: 989 observations
#predicted class=0  expected loss=0.01011122
#9/980=0.0091=0.01

rpart.plot(treeimb)
summary(hacide.train)
summary(treeimb)


table(hacide.train$cls, predict(treeimb, type = "class"))



predtr <- predict(treeimb, hacide.test, type = "class")
View(predtr)

table(predtr)


#multi classification

data("iris")
head(iris)
str(iris)
table(iris$Species)
#tree=randomForest(Species~Petal.Length+Petal.Width,data=iris,method ="class")
tree=rpart(Species~Petal.Length+Petal.Width,data=iris)
print(tree)
rpart.plot(tree)
summary(tree)
table(iris$Species, predict(tree, type = "class"))

#logisticregression
library(party)
rm(readingSkills)
readingSkills
View(readingSkills)

View(as.data.frame(readingSkills))
table(readingSkills$nativeSpeaker)
str(readingSkills)

#probability
prop.table(table(readingSkills$nativeSpeaker))

readingSkills$nativeSpeaker <- ifelse(readingSkills$nativeSpeaker=="yes", 1, 0)
View(readingSkills)
str(readingSkills)
readingSkills$nativeSpeaker<-as.factor(readingSkills$nativeSpeaker)

## Fit the model
output_logistic <- glm(nativeSpeaker ~ age + shoeSize + score,readingSkills,family=binomial(link="logit"))
output_logistic


# View the forest results.
print(output_logistic) 
summary(output_logistic)




df=data.frame(age =10, shoeSize =30, score=52) #Yes
hf=data.frame(age =11, shoeSize =30, score=35) #No


predicted <- predict(output_logistic, df, type="response")
predicted
predicted <- predict(output_logistic, hf, type="response")
predicted

if(predicted < 0.5){
  print("Predicted class is NO")
}else{
  print("Predicted class is Yes")
}

predicted <- predict(output_logistic, readingSkills, type="response")
predicted

head(predicted)
head(readingSkills$nativeSpeaker)



pre=read.csv("Pre_Reading Skills.csv")
View(pre)

Predicted=predict(output_logistic,pre,type="response")
View(Predicted)
head(readingSkills$nativeSpeaker)






#random forest
#install both the package
library(party)
library(randomForest)
View(readingSkills)
output_forest <- randomForest(nativeSpeaker ~ age + shoeSize + score,readingSkills)
# View the forest results.
print(output_forest)

df=data.frame(age =10, shoeSize =30, score=52) #Yes
df=data.frame(age =11, shoeSize =30, score=35) #No

predict(output_forest,df)

#svm
library(party)
install.packages('e1071')
library(e1071)
output_svm = svm(nativeSpeaker ~ age + shoeSize + score,readingSkills)
# View the forest results.
print(output_svm)
summary(output_svm)
df=data.frame(age =10, shoeSize =30, score=52) #Yes
df=data.frame(age =11, shoeSize =30, score=35) #No

predict(output_svm,df)


#naivy bayes

library(e1071)

data(Titanic)
View(Titanic)
write.csv(Titanic)
m <- naiveBayes(Survived ~ ., data = Titanic)  
m$tables

df2=read.csv("titanic_pre.csv")
df2
df2$prediction_servic =predict(m,df2)
df2

#clustring

mydata = mtcars
library(cluster)

model=kmeans(mydata,2)
model$cluster
model$centers

mydata$cluster=model$cluster
clusplot(mydata,model$cluster,color = TRUE,labels = 2,lines = 0)

View(mydata)



