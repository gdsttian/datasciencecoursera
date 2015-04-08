setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

totalNEI <- with(NEI, tapply(Emissions, as.factor(year), sum))

png(file="plot1.png", width=480, height=480, bg="transparent")

barplot(totalNEI/1000,
        main="Total PM2.5 Emission from All Sources in US",
        xlab="Year",
        ylab="Total PM2.5 Emission (ktons)")

dev.off()
