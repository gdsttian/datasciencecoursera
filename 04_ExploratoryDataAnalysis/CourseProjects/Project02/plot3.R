setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

balaggNEI <- aggregate(Emissions~year+type, data=subset(NEI, fips=="24510"), sum)

png(file="plot3.png", width=480, height=480, bg="transparent")

gplot <- ggplot(balaggNEI, aes(as.factor(year), Emissions, fill=type))
gplot + geom_bar(stat="identity") + facet_grid(.~type) + guides(fill=FALSE) +
    labs(x="Year", y="Total PM2.5 Emission (tons)",
         title="Total PM2.5 Emission in Baltimore City by Type")

dev.off()
