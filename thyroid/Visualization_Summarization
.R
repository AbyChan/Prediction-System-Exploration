summary(data)

mode(data)
data$classes
as.numeric(data$classes)
as.factor(as.numeric(data$classes))
levels(data$classes)//

mode(data$TSH)
hist(as.numeric(data$TSH),prob=T)


