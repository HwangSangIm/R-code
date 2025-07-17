# 2일차 오후
rm(list=ls())

job.type <- 'A'
if(job.type == 'B'){
  bonus <- 200
} else{
  bonus <- 100
}
print(bonus)

job.type <- 'A'
bonus <- 100
if(job.type == 'B'){
  bonus <- 200
}
print(bonus)

score <- 85
if(score>90){
  grade <- 'A'
} else if(score>80){
  grade <- 'B'
} else if(score>70){
  grade <- 'C'
} else if(score>60){
  grade <- 'D'
} else{
  grade <- 'F'
}
print(grade)

a <- 10
b <- 20
if(a > 5 & b > 5){
  print(a+b)
}
if(a>5 | b > 30){
  print(a*b)
}

a<10
b<20
if(x>0)
{
#  print(가능하지만 조심)
if(x>0)
  print("X는 양수입니다.") else
    prin("X는 0이거나 음수입니다.")
}

norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){
  if(iris$Petal.Length[i] <= 1.6) { mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i]>= 5.1){
      mylabel[i] <- 'H'} else{ mylabel[i] <- 'M'}}

print(mylabel)
news<-data.frame(iris$Petal.Length, mylabel)
head(news)
View(news)

sum <- 0
i <- 1
while (i<=100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)

sum <- 0
for(i in 1:10){
  sum <- sum + i
  if(i>=5)break
}
print(sum)

sum <- 0
for(i in 1:10){
  if(i%%2==0) next
  sum <- sum + i
}
sum(seq(1,10,2))

repeat {
  num <- as.numeric(readline(prompt = "숫자를 입력하세요 (0을 입력하면 종료): "))
  if(num == 0){
    cat("프로그램을 종료합니다.\n")
    break
  }
  cat("입력한 숫자:",num,"\n")
}

apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)

range(1:10)
range(iris$Sepal.Length)
range(iris$Sepal.Width)
range(iris$Petal.Length)
range(iris$Petal.Width)

apply(iris[,1:4],2,min)
apply(iris[,1:4],2,max)
apply(iris[,1:4],2,range)