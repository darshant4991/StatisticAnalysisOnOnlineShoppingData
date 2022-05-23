library(ggplot2)
library(tidyverse)

USECOMDATA <- read.csv("USE-commerce2020_Cleaned.csv")

ggplot(USECOMDATA, aes(x=Sales, y=IsDiscounted)) + geom_boxplot()+ 
  theme(axis.text.x=element_text(face="bold",color="#284571",size=10,angle=0),
        axis.text.y=element_text(face="bold",color="#284571",size=10))

t.test(Sales ~ IsDiscounted, data = USECOMDATA, var.equal = TRUE, paired = FALSE)
