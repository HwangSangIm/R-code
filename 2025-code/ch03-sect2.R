### 7/17 2일차 학습 정리
# 복습
# 기본 자료형
a <- 3.4
a
str(a)
class(a)
typeof(a)

b <- 3
b
str(b)
typeof(b)

c <- 3
c
str(c)
typeof(c)
is.vector(c)
c[2] <- 10

city <- c("Seoul","Tokyo","Washington")
city
rank <- c(1,3,2)
rank
city.info <- data.frame(city,rank)
city.info

str(city.info)
class(city.info)
typeof(city.info)
is.data.frame(city.info)
is.list(city.info)

iris
str(iris)
typeof(iris)
class(iris)
is.data.frame(iris)
is.list(iris)
str(iris$Species)
levels(iris$Species)

head(iris)
tail(iris)
iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:5,]
head(iris , 5)
iris[1:5,c(1,3)]

dim(iris)
dim(iris)[1]
dim(iris)[2]
nrow(iris)
ncol(iris)
colnames(iris)
colnames(iris)[2]
rownames(iris)
head(iris)
tail(iris)

str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"Species"])

colSums(iris[,-5])
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

summary(iris)
class(summary(iris))

z <- matrix(1:20,nrow = 4,ncol = 5)
z
t(z)

IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[,c(2,4)]

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b

2*a
b-5
2*a + 3 *b
a + b
b - a
b/a
a * b
a <- a*3
a
b <- b-5
b

iris
str(iris)
class(iris)
is.matrix(iris)
is.data.frame(iris)

state.x77
str(state.x77)
class(state.x77)
is.matrix(state.x77)
is.data.frame(state.x77)

m <- matrix(1:6,nrow=2,ncol=3,byrow=TRUE,
            dimnames = list(c("Row1","Row2"),c("Col1","Col2","Col3")))
m
str(m)
class(m)
is.matrix(m)
is.data.frame(m)

st <- data.frame(state.x77)
head(st)
class(st)

st <- as.data.frame(state.x77)
head(st)
class(st)

iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

iris.m <- as.matrix(iris)
head(iris.m)
class(iris.m)

iris[,"Species"]
iris[,5]
str(iris[,5])
iris["Species"]
iris[5]
str(iris[1])
iris$Species
is.factor(iris$Species)
is.vector(iris$Species)
is.vector(c(1,2))


getwd()
airquality
str(airquality)
summary(airquality)

getwd()
write.csv(airquality,file="airquality.csv")
write.csv(airquality,file="ch03/airquality.csv")
write.csv(airquality,file="ch03\\airquality.csv")

air <- read.csv("airquality.csv",header = T)
head(air)
air

my.iris <- subset(iris, Species == 'setosa')
my.iris
write.csv(my.iris,"my_iris.csv",row.names = F)
