library(e1071)  
library(ggplot2)
library(tidyverse)
USECOMDATA <- read.csv("USE-commerce2020_Cleaned.csv")
View(USECOMDATA)
summary(USECOMDATA$Prof.Percentage)

skewness(USECOMDATA$Prof.Percentage)

hist(USECOMDATA$Prof.Percentage, main="Distribution", xlab="Profit Percentage")

boxplot(USECOMDATA$Prof.Percentage, main="Boxplot of Prof Percentage", 
        ylab="Percentage")

ggplot(USECOMDATA, aes(y = State)) + geom_bar(aes(fill = Category), position = position_stack(reverse = TRUE)) + theme(legend.position = "top") + theme(text = element_text(size = 15, color = "#284571"))

ggplot(USECOMDATA, aes(y = Region)) + geom_bar(aes(fill = Ship.Mode), position = position_stack(reverse=TRUE)) + theme(legend.position="top") + theme(text=element_text(size = 15, color = "#284571"))

