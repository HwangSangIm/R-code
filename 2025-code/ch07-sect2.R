rm(list = ls())

sp <- split(iris,iris$Species)
sp
summary(sp)
str(sp)
class(sp)
typeof(sp)
mode(sp)

sp$setosa
sp$virginica
sp$versicolor
sp[[1]]
sp[[2]]
sp[[3]]

subset(iris, Species == "setosa")
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)
subset(iris, Sepal.Length > 7.6 , select = c(Petal.Length,Petal.Width))

iris[1,]
iris[1]
iris[c(1,2)]
iris[colnames(iris)[1:2]]
iris[colnames(iris)[3:4]]
iris[c("Petal.Length","Petal.Width")]

subset(iris , Sepal.Length > 7.6)[c("Petal.Length","Petal.Width")]

x <- 1:100
y <- sample(x, size=10, replace = FALSE)
y

sample(1:10, 10)
sample(1:5, 6)
sample(1:5, 7, replace = TRUE)

set.seed(10)
idx <- sample(1:nrow(iris), size=50, replace = FALSE)
iris.50 <- iris[idx,]
dim(iris.50)
head(iris.50)

sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)

set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)

if(!require(dplyr)){
  install.packages("dplyr")
}
library(dplyr)

??sample_n
sample_n(iris, 10)
sample_frac(iris)
sample_frac(iris, .1)

combn(1:5,3)
x = c("red","green","blue","black","white")
com <- combn(x,2)
com
str(com)
class(com)
typeof(com)
ncol(com)

for(i in 1:ncol(com)){
  cat(com[,i],"\n")
}

choose(5,3)
choose(5,4)
choose(5,2)

