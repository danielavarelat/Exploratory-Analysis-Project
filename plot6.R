library(ggplot2)
library(dplyr)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


BALT_LA<- NEI %>% filter((fips=='24510' | fips == "06037") & type == "ON-ROAD")
BALT_LA[BALT_LA$fips == '24510', 'city'] <- 'Baltimore'
BALT_LA[BALT_LA$fips == '06037', 'city'] <- 'Los Angeles'

ggplot(BALT_LA, aes(x=year, y=Emissions, fill=city)) + 
  geom_col(position = "dodge") +
  scale_x_continuous(breaks=c(1999,2002,2005,2008))
dev.copy(png,'plot6.png')
dev.off()