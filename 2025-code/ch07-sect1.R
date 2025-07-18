rm(list=ls())

z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z,na.rm=TRUE)

z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0
z1

n = na.omit(z2)
str(n)
typeof(n)

z3 <- as.vector(na.omit(z2))
z3

x <- iris
x[1,2] <- NA;x[1,3] <- NA
x[2,3] <- NA;x[3,4] <- NA
head(x)
str(x)
summary(x)

is.na(x)
is.na(x[,1])
is.na(x[,2])

for ( i in 1:ncol(x)){
  this.na <- is.na(x[,i])
  cat(colnames(x)[i],"\t", sum(this.na),"\n")
}

col_na <- function(y){
  return(sum(is.na(y)))
}

na_count <- apply(x,2,FUN=col_na)
na_count

na_count <- apply(x,2,FUN = function(x) sum(is.na(x)))
na_count

rowSums(is.na(x))
sum(rowSums(is.na(x))>0)
sum(is.na(x))

head(x)
x[complete.cases(x),]
x[!complete.cases(x),]
y <- x[complete.cases(x),]
head(y)

airquality
head(airquality)
sum(rowSums(is.na(airquality)) >0 )
air <- airquality[!complete.cases(airquality),]
air
nrow(air)
head(airquality[complete.cases(airquality),])

st <- data.frame(state.x77)
str(st)
colnames(st)

boxplot(st$Income)
boxplot.stats(st$Income)
boxplot.stats(st$Income)$out

out.val <- boxplot.stats(st$Income)$out
st$Income[st$Income %in% out.val] <- NA
head(st)
newdata <- st[complete.cases(st),]
head(newdata)

boxplot.stats(st$Income)
boxplot.stats(st$Income)$stats
boxplot.stats(st$Income)$n
boxplot.stats(st$Income)$conf
boxplot.stats(st$Income)$out
