rm(list=ls())

install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)

ds <- read.csv("BreadBasket_DMS.csv")
str(ds)
head(ds)
unique(ds$Item)

ds.new <- subset(ds, Item != 'NONE')
write.csv(ds.new,"BreadBasket_DMS.csv",row.names=F)

trans <- read.transactions("BreadBasket_DMS.csv", format="single", header = T , cols=c(3,4), sep=",", rm.duplicates = T)
trans
summary(trans)
dimnames(trans)[[1]]
dimnames(trans)[[2]]
toLongFormat(trans)
inspect(head(trans, 10))

itemFrequencyPlot(trans , topN=10 , type="absolute", xlab="상품명",ylab="절대 판매빈도",main="판매량 많은 상품",col="green")

itemFrequencyPlot(trans, topN=10, type="relative", xlab="상품명",ylab="상대 판매빈도",main="판매량 많은 상품",col="blue")

rules <- apriori(trans, parameter = list(supp = 0.001 , conf = 0.7))
rules
summary(rules)

options(digits = 3)
inspect(rules[1:10])

rules.sort <- sort(rules, by='confidence',decreasing = T)
inspect(rules.sort[1:14])

rules.sort <- sort(rules,by='lift',decreasing = T)
inspect(rules.sort[1:14])

plot(rules.sort, measure=c("support","lift"),shading="confidence")

plot(rules.sort, method="graph")

plot(rules.sort, method = "grouped")

write(rules.sort,file = "BreadBasket_rules.csv",sep=",",quote=T,row.names=F)
