library(ggstatsplot)

USECOMDATA <- read.csv("USE-commerce2020_Cleaned.csv")

ggcorrmat( data = USECOMDATA[, c("Discount", "Quantity", "Sales", "Profit")], type ="parametric", colors = c("darkred", "white", "steelblue"))
+ theme(axis.text.x=element_text(face="bold",color="#284571", size=10,angle=0),
      axis.text.y= element_text(face="bold", color="#284571",size=10))
           
           
           
           
           
           
           