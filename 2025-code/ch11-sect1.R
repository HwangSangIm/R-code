rm(list = ls())

head(cars)
plot(dist~speed, data=cars)
model <- lm(dist~speed, cars)
model

abline(model)
coef(model)[1]
coef(model)[2]

b <- coef(model)[1]
W <- coef(model)[2]

speed <- 30
dist <- W*speed + b
dist
speed <- 35
dist <- W*speed + b
dist
speed <- 40
dist <- W*speed + b

dist

model[1]
model[2]

speed <- cars[,1]
pred <- W * speed + b
pred

compare <-  data.frame(pred,cars[,2],pred-cars[,2])
colnames(compare) <- c('예상','실제','오차')
head(compare)

library(car)
head(Prestige)
tail(Prestige)
str(Prestige)
class(Presitige)
sum(is.na(Prestige))
Prestige(!complete.cases(Prestige),)
newdata <- Prestige[,c(1:4)]
plot(newdata, pch = 16, col = "blue",main="MatrixScatterplot")
mod1 <- lm(income ~ education + prestige + women, data = newdata)
summary(mod1)

library(MASS)
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod2 <- lm(income ~ ., data=newdata2)
summary(mod2)

mod3 <- stepAIC(mod2)
mod3
summary(mod3)

x <- 1:10
y <- 2*x+rnorm(10)
smode1 <- lm(y ~ x)

plot(x,y)
abline(smode1)
plot(x,y)
abline(coef(smode1)[1],coef(smode1)[2])
plot(x,y)
abline(smode1, col = "red", lty = "dashed", lwd = 2)

iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)
mod.iris <- glm(Species ~., data=iris.new)
summary(mod.iris)

unknown <- data.frame(rbind(c(5.1,3.5,1.4,0.2)))
names(unknown) <- names(iris)[1:4]
unknown

pred <- predict(mod.iris,unknown)
pred
round(pred,0)
pred <- round(pred,0)
pred
levels(iris$Species)
levels(iris$Species)[pred]

test <- iris[,1:4]
pred <- predict(mod.iris,test)
pred <- round(pred,0)
pred
answer <- as.integer(iris$Species)
pred == answer
acc <- mean(pred == answer)
acc

install.packages("nnet")
library(nnet)

data(iris)
iris.new <- iris

mod.iris <- multinom(Species ~., data = iris.new)

pred_species <- predict(mod.iris, type = "class")
pred_species
iris[pred_species != iris$Species,]
acc <- mean(pred_species == iris$Species)
acc