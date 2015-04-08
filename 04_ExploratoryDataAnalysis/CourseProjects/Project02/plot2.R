setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

baltotalNEI <- with(subset(NEI, fips=="24510"),
                    tapply(Emissions, as.factor(year), sum))

png(file="plot2.png", width=480, height=480, bg="transparent")

barplot(baltotalNEI,
        main="Total PM2.5 Emission from All Sources in Baltimore City",
        xlab="Year",
        ylab="Total PM2.5 Emission (tons)")

dev.off()
