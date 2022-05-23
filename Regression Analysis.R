USECOMDATA <- read.csv("USE-commerce2020_Cleaned.csv")

model <- lm(Profit ~ Sales + Category + Discount, data=USECOMDATA)

summary(model)

model <- lm(Profit ~ Sales + Region + Quantity + Category + Sub.Category + Discount, 
            data=USECOMDATA)

summary(model)

USECOMDATA$Sales2 <- USECOMDATA$Sales^2

USECOMDATA$Discount3 <- ifelse(USECOMDATA$Discount >= 0.3, 1 , 0)

model2 <- lm(Profit ~ Sales + Sales2 + Region + Sub.Category + Discount + 
               Discount3*Category, data=USECOMDATA)

summary(model2)

plot(model2)
