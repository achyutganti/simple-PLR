install.packages('tidyverse')

cafeteria<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14)
dispensers<-c(0,0,1,1,2,2,3,3,4,4,5,5,6,6)
sales<-c(507.9,498,568.3,575.5,651.6,657.1,713.8,699.6,758.4,765.7,797.7,814.3,836.8,825.1)

cafe = data.frame(cafeteria,dispensers,sales)

#plot of sales vs dispensers
plot(sales,dispensers)   #As the sales increases, the number of dispensers in each cafeteria increases. 
#The relation looks a bit curved in nature

#Fitting a simple linear regression model to dispensers and sales. 

sales_lm <- lm(sales~dispensers, data=cafe)
summary(sales_lm)

sales_qm <- lm(sales~dispensers+I(dispensers^2), data=cafe)
summary(sales_qm)
