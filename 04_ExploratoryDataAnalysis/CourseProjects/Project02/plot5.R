setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

balNEI <- subset(NEI, fips=="24510")
vehSCC <- SCC[grepl("Vehicle", SCC$SCC.Level.Two, ignore.case=TRUE), ]$SCC
balvehNEI <- with(subset(balNEI, SCC%in%vehSCC), tapply(Emissions, as.factor(year), sum))

png(file="plot5.png", width=480, height=480, bg="transparent")

barplot(balvehNEI,
        main="PM2.5 Emission from Motor Vehicle Sources in Baltimore City",
        xlab="Year",
        ylab="Total PM2.5 Emission (tons)")

dev.off()