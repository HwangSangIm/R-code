rm(list = ls())

agg <- aggregate(iris[,-5], by = list(iris$Species),FUN = mean)

agg

agg <- aggregate(iris[,-5],by=list(품종 = iris$Species),FUN=mean)

agg

agg <- aggregate(iris[,-5],by=list(품종 = iris$Species), FUN = median)

agg

agg <- aggregate(iris[,-5],by=list(표준편차 = iris$Species), FUN = sd)

agg

head(mtcars)
str(mtcars)

agg <- aggregate(mtcars, by = list(cyl=mtcars$cyl , vs = mtcars$vs),FUN=max)

agg

agg <- aggregate(mtcars, by = list(cyl=mtcars$cyl , vs = mtcars$vs), FUN = mean)

agg

agg <- aggregate(mtcars, by = list(gear = mtcars$gear , carb = mtcars$carb), FUN = mean)

agg

agg[c(1,2,3)]

agg <- aggregate(mtcars, by = list(am=mtcars$am , carb = mtcars$carb), FUN = mean)

agg[c(1,2,3)]

x <- data.frame(name=c("a","b","c"), math = c(90,80,40))
y <- data.frame(name=c("a","b","d"), korean = c(75,60,90))
x
y

z <- merge(x,y)
z

z <- merge(x,y,by=c("name"))
z

merge(x,y)
merge(x,y,all.x=T)
merge(x,y, all.y = T)
merge(x,y,all=T)

x <- data.frame(name = c("a","b","c"), math = c (90,80,40))
y <- data.frame(sname = c("a","b","d"), korean = c(75,60,90))
x
y
merge(x,y)

merge(x,y,by.x=c("name"),by.y=c("sname"))
merge(x,y,by.x=c("name"),by.y=c("sname"),all.x=T)
merge(x,y,by.x=c("name"),by.y=c("sname"),all.y=T)
merge(x,y,by.x=c("name"),by.y=c("sname"),all=T)

# 공통 열이 없을 경우 : merge()는 모든 가능한 행 조합(데카르트 곱)을 생성합니다.