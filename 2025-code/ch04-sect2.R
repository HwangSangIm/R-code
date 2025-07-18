rm(list=ls())

mymax <- function(x,y){
  num.max <- x
  if(y > x){
    num.max <- y
  }
  return(num.max)
}

mymax(10,15)
a <- mymax(20,15)
b <- mymax(31,45)
print(a+b)
mydiv <- function(x,y=2){
  result <- x/y
  return(result)
}

mydiv(x=10,y=3)
mydiv(10,3)
mydiv(10)

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum,mul=val.mul))
}

result <- myfunc(5,8)
s <- result$sum
m <- result$mul
s <- result[[1]]
m <- result[[2]]
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')

source("ch04/myfunc.R")
a <- mydiv2(20,4)
b <- mydiv2(30,4)
a
b
a + b
mydiv2(mydiv2(20,2),5)

score <- c(76,84,69,50,95,60,82,71,88,84)
which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)

score[which(score==69)]
score[which.max(score)]

score <- c(76,84,69,50,95,60,82,71,88,84)
idx <- which(score <= 60)
idx
score[idx] <- 61
score

idx <- which(score>= 80)
score.high <- score[idx]
score.high

idx <- which(iris$Petal.Length > 5.0)
idx
iris.big <- iris[idx,]
iris.big
str(iris.big)

m <- matrix(1:9, nrow = 3)
m

result <- which(m>5, arr.ind = TRUE)
print(result)
str(result)

which(m>5)
result <- which(m > 5, arr.ind = FALSE)
print(result)

result <- which(matrix(11:19, nrow = 3) > 15 , arr.ind = FALSE)
print(result)

result <- which(matrix(11:19,nrow=3)>15,arr.ind = TRUE)
print(result)
str(result)

m <- matrix(11:19, nrow = 3)
m
result <- which(m > 15)
print(result)
m[result]

m
result <- which(m > 15 , arr.ind = TRUE)
print(result)
m[result]
m[cbind(result[,1],result[,2])]

str(iris)
str(iris[,1:4]>5.0)
is.matrix(iris[,1:4]>5.0)

idx <- which(iris[,1:4]>5.0,arr.ind = TRUE)
idx
iris[,1:4][idx[1,1],idx[1,2]]
iris[1,1]
idx[1,1]

idx <- which(iris[,1:4]>5.0)
idx

idx <- which(iris[,1:4]>5.0, arr.ind = TRUE)
idx
iris[,1:4][idx]
head(iris)