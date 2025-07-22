GNI2014

library(treemap)
data(GNI2014)
head(GNI2014)
str(GNI2014)

treemap(GNI2014,index=c("continent", "iso3") , vSize = "population", vColor = "GNI" , type = "value", title = "Worlds GNI")
                
treemap(GNI2014, index=c("continent","iso3"), vSize="population", vColor="GNI" , type = "index"  , title = "world's GNL")

sales.df <- data.frame(Category = c("Electronics","Electronics","Clothing","clothing","Food"),
                    Subcategory = c("TV","Phone","Shirt","Pants","Snacks"), Sales = c(300,500,200,150,400))

treemap(sales.df, index = c("Category","Subcategory"), vSize = "Sales", vColor = "Sales",type = "value",title = "트리맵")

library(treemap)
st <- data.frame(state.x77)

rownames(st)

st <- data.frame(st, stname = rownames(st))

dev.off()
treemap(st, index=c("stname"), vSize = "Area" , vColor = "Income" , type = "value" , title = "USA states area and income")

treemap(st, index=c("stname"), vSize = "Population", vColor = "Murder" , type = "index", title = "USA states area and income")

st <- data.frame(state.x77)

symbols(st$Illiteracy, st$Murder, circles = st$Population,inches = 0.3,fg = "white",bg = "lightgray",lwd = 1.5 , xlab = "rate of Illiteracy",ylab = "crime(murder) rate", main = "Illiteracy and Crime")

text(st$Illiteracy, st$Murder, rownames(st),cex=0.6 , col="brown")

st[order(st$Murder, decreasing = T),][1:10, ]
st[order(st$Murder),][1:10,]

st[order(st$Illiteracy, decreasing = T),][1:10,]
st[order(st$Illiteracy),][1:10,]

head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color = TRUE, main = "Gear and Vs")

mosaicplot(~gear+vs,data = mtcars, color =c("green","blue"), main = "Gear and Vs")
mosaicplot(~vs+gear, data = mtcars, color = c("red","yellow"),main = "Gear and Vs")

table(mtcars$vs , mtcars$gear)
table(mtcars$gear, mtcars$vs)

prop.table(table(mtcars$vs , mtcars$gear))

mosaicplot(~vs+gear, data = mtcars, color = c("green","blue","skyblue"), main = "Vs and Gear")

UCBAdmissions
str(UCBAdmissions)
class(UCBAdmissions)

dim(UCBAdmissions)
dimnames(UCBAdmissions)

ucb <- UCBAdmissions
ucb
ucb[,,'A']
ucb[,,'F']

mosaicplot(~Gender+Admit, data = UCBAdmissions,color = TRUE, main = "UC Berkeley Admissions")
mosaicplot(~Gender+Admit, data = UCBAdmissions , color = c("red","gray"), main = "UC Berkeley Admissions")

mosaicplot(~vs + gear , data = mtcars, color = TRUE, main = "Vs and Gear")

tab <- table(mtcars$vs, mtcars$gear)
tab
str(tab)
mosaicplot(tab, color = TRUE, main = "Vs and Gear")

mosaicplot(~ gear + vs , data = mtcars , color = TRUE, main = "Gear and Vs")

tab <- table(mtcars$gear, mtcars$vs)
tab
mosaicplot(tab, color = TRUE, main = "Gear and Vs")

# table 직접 생성
t <- table(c(1,2,3,1,1,3,3,3,1,2))
t
str(t)

mytab <- structure(
  c(2,3,1,4), dim = c(2, 2), dimnames = list(Gender = c("Male","Female"), Result = c("Pass","Fail")), class = "table")

mytab
str(mytab)
class(mytab)

mat <- matrix(c(5,7,6,8), nrow=2, dimnames = list(c("A","B"), c("X","Y")))

class(mat) <- "table"
mat
str(mat)
class(mat)

tab3d <- array(c(1:8), dim=c(2,2,2),dimnames = list(Gender = c("M", "F"), Result = c("Yes", "No"), Group = c("G1", "G2")))
class(tab3d) <- "table"
tab3d
str(tab3d)
class(tab3d)

rm(list = ls())

library(ggplot2)

mpg
str(mpg)

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()

str(mpg)

ggplot(mpg,aes(displ,hwy,colour = drv)) +
  geom_point()

month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month, rain)
df

ggplot(df,aes(x=month, y = rain)) +
  geom_bar(stat = "identity", width = 0.99, fill = "steelblue")

ggplot(df,aes(x=month, y = rain)) +
  geom_bar(stat="identity", width = 0.7, fill = "steelblue") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=20, face="bold",colour = "steelblue"))+
  labs(x = "월", y = "강수량") +
  coord_flip()

ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat = "identity", width = 0.7, fill="wheat") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=20, face="bold", colour="steelblue")) +
  labs(x="월", y="강수량")

ggplot(df, aes(x=month, y=rain)) +
  geom_bar(stat="identity", width=0.7, fill="steelblue") +
  ggtitle("월별 강수량") +
  theme(plot.title = element_text(size=20, face="bold", colour="steelblue"),
        axis.title.y = element_text(angle=0, vjust = 0.5)) +
  labs(x="월", y="강수량") +
  coord_flip()

ggplot(iris, aes(x=Petal.Length)) +
  geom_histogram(binwidth=0.5)

ggplot(iris, aes(x=Petal.Length)) +
  geom_histogram(binwidth=1.0)

range(iris$Petal.Length)

range(iris$Sepal.Width)
ggplot(iris, aes(x=Sepal.Width)) +
  geom_histogram(binwidth=0.5)

ggplot(iris, aes(x=Sepal.Width,fill = Species, color = Species)) +
  geom_histogram(binwidth = 1, position = "dodge")+
  theme(legend.position = "top")

ggplot(iris, aes(x=Sepal.Width, fill = Species, color = Species)) +
  geom_histogram(binwidth = 1, position = "stack") +
  theme(legend.position = "top")

g1 <- ggplot(iris, aes(x=Sepal.Width,fill = Species, color = Species)) +
  geom_histogram(binwidth = 1, position = "dodge")+
  theme(legend.position = "top")

g2 <- ggplot(iris, aes(x=Sepal.Width, fill = Species, color = Species)) +
  geom_histogram(binwidth = 1, position = "stack") +
  theme(legend.position = "top")

grid.arrange(g1, g2, ncol = 2)

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) +
  geom_point()

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width, color = Species)) +
  geom_point(size = 2) +
  ggtitle("꽃잎의 길이와 폭") +
  theme(plot.title = element_text(size=15,face="bold",colour="steelblue"))

ggplot(data=iris,aes(y=Petal.Length)) +
  geom_boxplot(fill="yellow")

ggplot(data=iris,aes(y=Petal.Length,fill = Species)) +
  geom_boxplot()

str(iris)

boxplot(iris$Petal.Length ~ iris$Species,iris, col = c("lightgray","yellow","skyblue"))

airmiles
class(airmiles)
summary(airmiles)

year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year,cnt)
head(df)

ggplot(data=df,aes(x= year,y=cnt)) +
  geom_line(col="red")

plot(airmiles)

rm(list=ls())

if(!require("Rtsne")){
  install.packages("Rtsne")
}
library(Rtsne)
ds <- iris[,-5]
ds

dup <- which(duplicated(ds))
dup

ds <- ds[-dup,]
str(ds)

ds.y <- iris$Species[-dup]
str(ds.y)
length(ds.y)

tsne <- Rtsne(ds,dims=3,perplexity=10)
tsne

tsne$Y
df.tsne <- data.frame(tsne$Y)
head(df.tsne)
ggplot(df.tsne, aes(x=X1,y=X2,z=X3, color=ds.y)) +
  geom_point(size=2)

install.packages(c("rgl","car"))
library(rgl)
library(car)
library(mgcv)
library(Rtsne)

tsne <- Rtsne(ds,dims=3,perplexity=10)
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

scatter3d(x=df.tsne$X1,y=df.tsne$X2,z=df.tsne$X3)

points <- as.integer(ds.y)
points
color <- c('red','green','blue')

scatter3d(x=df.tsne$X1,y=df.tsne$X2,z=df.tsne$X3,
          point.col = color[points],
          surface = FALSE)
scatter3d(x=df.tsne$X1,y=df.tsne$X2,z=df.tsne$X3,
          point.col = color[points],
          surface = T)
