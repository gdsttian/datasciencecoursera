setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

ballosNEI <- subset(NEI, fips%in%c("24510", "06037"))
vehSCC <- SCC[grepl("Vehicle", SCC$SCC.Level.Two, ignore.case=TRUE), ]$SCC
ballosvehNEI <- aggregate(Emissions~year+fips, data=subset(ballosNEI, SCC%in%vehSCC), sum)
ballosvehNEI[ballosvehNEI$fips=="24510", ]$fips <- "Baltimore City"
ballosvehNEI[ballosvehNEI$fips=="06037", ]$fips <- "Los Angeles County"

png(file="plot6.png", width=480, height=480, bg="transparent")

gplot <- ggplot(ballosvehNEI, aes(as.factor(year), Emissions, fill=fips))
gplot + geom_bar(stat="identity") + facet_grid(.~fips) + guides(fill=FALSE) +
    labs(x="Year", y="Total PM2.5 Emission (tons)",
         title="Total PM2.5 Emission in Baltimore City vs. Los Angeles County")

dev.off()