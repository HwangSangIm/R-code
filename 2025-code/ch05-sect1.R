rm(list = ls())

favorite <- c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL','FALL','SUMMER','SPRING','SPRING')
favorite
table(favorite)
table(favorite)/length((favorite))

ds <- table(favorite)
ds
barplot(ds, main='favorite season')
barplot(ds, main = 'favorite season', las = 1)

ds <- table(favorite)
ds
pie(ds, main = 'favorite season')

favorite.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds <- table(favorite.color)
ds
barplot(ds,main = 'favorite color')
barplot(ds,main = 'favorite color', las=0)
barplot(ds,main = 'favorite color', las=1)
barplot(ds,main = 'favorite color', las=2)
barplot(ds,main = 'favorite color', las=3)
colors <- c('green','red','blue')
names(ds) <- colors
ds
barplot(ds,main = 'favorite color',col = colors)
pie(ds, main = 'favorite color', col = colors)

gender <- c("male","female","female","male","female")

gender_factor <- factor(gender)

print(gender_factor)
levels(gender_factor)

size <- c("small","large","medium","small","large")
size_factor <- factor(size, levels = c("small","medium","large"))
print(size_factor)
levels(size_factor)
nlevels(size_factor)
class(size_factor)

grade <- c("C","B","A","B","C")
grade_factor <- factor(grade, levels = c("C","B","A"),ordered = TRUE)
print(grade_factor)
grade_factor[1] < grade_factor[2] # TRUE ( C < B)
nlevels(grade_factor)

blood <- c("A","B","O","A","AB","O","A")
blood_factor <- factor(blood)
table(blood_factor)
nlevels(blood_factor)


ds <- c(5,7,9,6)
colors <- c('red','green','blue','purple')
names(ds) = colors

par(mfrow = c(2,2))
