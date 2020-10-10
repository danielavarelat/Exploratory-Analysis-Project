library(ggplot2)
library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

BALT<- NEI[NEI$fips=='24510',]
barplot(tapply(BALT$Emissions, BALT$year, FUN=sum), main="Total PM2.5 Emissions in Baltimore",
        ylab = 'Amount of PM2.5 emitted, in tons')
dev.copy(png,'plot2.png')
dev.off()