rm(list = ls())

weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim=0.2)
mean(weight.heavy,trim=0.2)

mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata,(0:10)/10)
summary(mydata)

mydata <- c(60,62,64,65,68,69,120)
var(mydata)
sd(mydata)
range(mydata)

diff(range(mydata))
diff(c(150,22))
diff(range(c(150,22)))
diff(c(10,100))

cars
str(cars)
head(cars)

dist <- cars[,2]
range(dist)
hist(dist,
     main="Histogram for 제동거리",
     xlab="제동거리",
     ylab="빈도수",
     border="blue",
     col="green",
     las=2,
     breaks = 5)

dist <- cars[,2]
boxplot(dist,main="자동차 제동거리")
range(cars[,2])
quantile(cars[,2])

boxplot(cars[,1], main="자동차 속도")
range(cars[,1])

boxplot.stats(dist)

boxplot(Petal.Length ~ Species, data=iris,main="품종별 꽃잎의 길이")

boxplot(Petal.Width ~ Species, data=iris,main="품종별 꽃잎의 높이")
boxplot(Petal.Width ~ Species, data=iris,main="품종별 꽃잎의 높이")

boxplot(Sepal.Length ~ Species , data=iris, main="품종별 꽃의 길이")

mtcars
head(mtcars)
str(mtcars)
summary(mtcars)

par(mfrow=c(1,3))

barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab = "#of carburetors",
        ylab = "frequency",
        col="blue")
barplot(table(mtcars$cyl),
        main="Barplot of Cylinder",
        xlab = "#of cylender",
        ylab = "frequency",
        col = "red")
barplot(table(mtcars$gear),
        main="Barplot of Gear",
        xlab = "#of gears",
        ylab = "frequency",
        col = "Green")
par(mfrow=c(1,1))

