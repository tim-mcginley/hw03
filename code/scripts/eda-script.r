ads <- read.csv("data/Advertising.csv")

TV_sum <- summary(ads$TV)
Radio_sum <- summary(ads$Radio)
Newspaper_sum <- summary(ads$Newspaper)
Sales_sum <- summary(ads$Sales)

sink('data/eda-output.txt')
print('TV Data Summary:')
TV_sum
print('Radio Data Summary:')
Radio_sum
print('Newspaper Data Summary:')
Newspaper_sum
print('Sales Data Summary:')
Sales_sum
print('Correlation Matrix for all variables')
cor(ads[, -1])
sink()

cor_matrix <- cor(ads[, -1])
save(cor_matrix, file = "data/correlation-matrix.RData")

png("images/histogram-tv.png")
hist(ads$TV, breaks = 12, xlab = "TV Advertising budget by Product", main = 'Investment in TV Ads')
dev.off()

png("images/histogram-radio.png")
hist(ads$TV, breaks = 12, xlab = "Radio Advertising budget by Product", main = 'Investment in Radio Ads')
dev.off()

png("images/histogram-newspaper.png")
hist(ads$TV, breaks = 12, xlab = "Print Advertising budget by Product", main = 'Investment in Newspaper Ads')
dev.off()

png("images/histogram-sales.png")
hist(ads$Sales, breaks = 12, xlab = "Thousands of Units of Sales", main = "Sales by Product")
dev.off()
