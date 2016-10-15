ad_data <- read.csv("data/Advertising.csv")

reg_obj <- lm(ad_data$Sales ~ ad_data$TV + ad_data$Radio + ad_data$Newspaper, data = ad_data)
reg_sum <- summary(reg_obj)

reg_obj1 <- lm(ad_data$Sales ~ ad_data$TV, data = ad_data)
reg_sum1 <- summary(reg_obj1)

reg_obj2 <- lm(ad_data$Sales ~ ad_data$Radio, data = ad_data)
reg_sum2 <- summary(reg_obj2)

reg_obj3 <- lm(ad_data$Sales ~ ad_data$Newspaper, data = ad_data)
reg_sum3 <- summary(reg_obj3)

save(reg_sum1, reg_sum, reg_sum2, reg_sum3, reg_obj, reg_obj1, reg_obj2, reg_obj3, file = "data/regression.RData")

png("images/residual-plot.png")
plot(reg_obj, which = 1, main= "Ad Budget vs Product Sales Residuals")
dev.off()

png("images/scale-location-plot.png")
plot(reg_obj, which = 3, main= "Ad Budget vs Product Sales Scale-Location Plot")
dev.off()

png("images/normal-qq-plot.png")
plot(reg_obj, which = 2, main= "Ad Budget vs Product Sales")
dev.off()

png("images/scatterplot-tv-sales.png")
plot(ad_data$Sales ~ ad_data$TV, main= "TV Ad Budget vs Product Sales", xlab= "Ad Budget in Thousands of Dollars", ylab = "Thousands of Unit Sales")
abline(lm(ad_data$Sales ~ ad_data$TV, data = ad_data), col = "darkturquoise", lwd = 5)
dev.off()

png("images/scatterplot-radio-sales.png")
plot(ad_data$Sales ~ ad_data$Radio, main= "Radio Ad Budget vs Product Sales", xlab= "Ad Budget in Thousands of Dollars", ylab = "Thousands of Unit Sales")
abline(lm(ad_data$Sales ~ ad_data$Radio, data = ad_data), col = "darkturquoise", lwd = 5)
dev.off()

png("images/scatterplot-newspaper-sales.png")
plot(ad_data$Sales ~ ad_data$Newspaper, main= "Print Ad Budget vs Product Sales", xlab= "Ad Budget in Thousands of Dollars", ylab = "Thousands of Unit Sales")
abline(lm(ad_data$Sales ~ ad_data$Newspaper, data = ad_data), col = "darkturquoise", lwd = 5)
dev.off()
