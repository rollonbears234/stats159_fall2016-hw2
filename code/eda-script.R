adData = read.csv(file = "../data/Advertising.csv")

#We will look at summary statistics for TV and scatterplot-tv-sales

#Saving Summary Statistics to eda-output.txt
sink(file = "../data/eda-output.txt")

mean(adData$TV)
mean(adData$Sales)


var(adData$TV)
mean(adData$Sales)

quantile(adData$TV)
quantile(adData$Sales)

summary(adData$TV)
summary(adData$Sales)

hist(adData$TV, main = "TV")
hist(adData$Sales, main = "Sales")

sink()

#Adding images to Images
pdf('../images/histogram-sales.pdf')
hist(adData$Sales, main = "Sales")
dev.off()

png('../images/histogram-sales.png')
hist(adData$Sales, main = "Sales")
dev.off()

png('../images/histogram-tv.png')
hist(adData$TV, main = "TV")
dev.off()

pdf('../images/histogram-tv.pdf')
hist(adData$TV, main = "TV")
dev.off()
