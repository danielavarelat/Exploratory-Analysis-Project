
library(ggplot2)
library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI_SCC <- merge(x = NEI, y = SCC, by = "SCC", all.x = TRUE)

coal_SCCs <- NEI_SCC %>% filter(grepl("coal", EI.Sector, ignore.case=TRUE))

barplot(tapply(coal_SCCs$Emissions, coal_SCCs$year, FUN=sum), main="Total PM2.5 Emissions - Coal related sources",
        ylab = 'Amount of PM2.5 emitted, in tons')

dev.copy(png,'plot4.png')
dev.off()
