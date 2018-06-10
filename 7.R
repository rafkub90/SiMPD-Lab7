#install.packages("C50")
library("C50")
data <- matrix(c(24, 24, 23, 27, 24, 21, 27, 21, 32, 23, 25, 27, 24, 24, 30,
                 350,250,250,250,200,250,250,250,250,300,250,200,350,200,250,
                 1,1,1,4,1,5,4,5,5,5,1,1,5,5,4,
                 1099,699,599,849,339,819,389,799,599,899,799,599,499,399,999), 15, 4)
labels <- c("1", "2", "3", "4")
result <- c(2, 3, 4, 3, 3, 5, 3, 3, 1, 3, 3, 3, 3, 4, 2)
test <- factor(result, labels)
colnames(data) <- c("Matryca", "Iluminacja", "Reakcja", "Cena")
treeModel <- C5.0(x = data[,], y = test)
treeModel
summary(treeModel)
plot(treeModel)