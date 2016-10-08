#Read in Advertising and compute regression object via lm(), summary of this object using summary()
#Also produces a scatter with regression line - save in PNG and PDF format
#Predict Sales (Y) from TV (X)

adData = read.csv("../data/Advertising.csv")
adModel = lm(formula = adData$Sales ~ adData$TV)

Sales = adData$Sales
TV = adData$TV

summary = summary(adModel)

save(adModel, file = "../data/regression.RData")


pdf('../images/scatterplot-tv-sales.pdf')
plot(TV, Sales)
abline(adModel)
dev.off()

png('../images/scatterplot-tv-sales.png')
plot(TV, Sales)
abline(adModel)
dev.off()
