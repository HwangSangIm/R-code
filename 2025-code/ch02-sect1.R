max(4,6,2)
factorial(5)
a<-125
a
print(a)



# source("C:/[2025-R]/2025-code/ch02-sect1.R")
# source("C:/[2025-R]/2025-code/ch02-sect1.R", echo = TRUE)
# source("/ch02-sect1.R", echo = TRUE)
# source("ch02-sect1.R")

# 벡터
d <-  c(1,4,3,7,8)
d
2 * d
d - 5
3 * d + 4

x <- c(1, 2, 3, 1)
x
y <- c(4, 5, 6)
y
x + y

x <- c(1,2,3)
x <- c("a","b","c")
z <- c(TRUE,TRUE,FALSE,TRUE)
x
y
z

w <- c(1,2,3,"a","b","c")
w

p <- c(1, 2, TRUE, FALSE, FALSE, TRUE)
p

d <-  c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(d, decreasing = TRUE)

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

