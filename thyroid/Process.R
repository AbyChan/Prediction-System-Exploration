thyData = read.table("/home/tyan/DataSet/thyroid-disease/allbp",sep=',',header=T,na.strings='?')
testData = read.table("/home/tyan/DataSet/thyroid-disease/allbp.test",sep=',',header=T,na.strings='?')
library(rpart)
rt<-rpart(thyData$classes~.,data=thyData[,1:26])
rt
plot(rt)
text(rt)
prettyTree(rt)
printcp(rt)
rt2<-prune(rt,cp=0.08)
rt2
plot(rt2)
text(rt2)
rt.predictions=predict(rt,testData)

as.numeric(testData[,'classes'])
(rt <- mean(abs(rt.predictions-as.numeric(testData[,'classes']))))


(rt <- mean((rt.predictions-as.numeric(testData[,'classes']))^2))


(rt <- mean((rt.predictions-as.numeric(testData[,'classes']))^2)/
   mean((mean(as.numeric(testData[,'classes']))-as.numeric(testData[,'classes']))^2))

plot(rt.predictions)
