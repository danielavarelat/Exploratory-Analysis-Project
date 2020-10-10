
library(ggplot2)
library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
x <- NEI_SCC %>% filter(type == "ON-ROAD" & fips=='24510')
barplot(tapply(x$Emissions, x$year, FUN=sum), main="Total PM2.5 Emissions - Coal related sources / Baltimore",
        ylab = 'Amount of PM2.5 emitted, in tons')
dev.copy(png,'plot5.png')
dev.off()