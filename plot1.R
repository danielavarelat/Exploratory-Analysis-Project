library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

barplot(tapply(NEI$Emissions, NEI$year, FUN=sum), main="Total PM2.5 Emissions",
        ylab = 'Amount of PM2.5 emitted, in tons')

dev.copy(png,'plot1.png')
dev.off()