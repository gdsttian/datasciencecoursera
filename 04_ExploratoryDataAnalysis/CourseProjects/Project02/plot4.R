setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project02")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

combRelatedSCC <- SCC[grepl("comb", SCC$SCC.Level.One, ignore.case=TRUE), ][, c("SCC", "SCC.Level.Four")]
coalRelatedSCC <- combRelatedSCC[grepl("coal", combRelatedSCC$SCC.Level.Four, ignore.case=TRUE), ]$SCC
coalcombNEI <- with(subset(NEI, SCC%in%coalRelatedSCC), tapply(Emissions, as.factor(year), sum))

png(file="plot4.png", width=480, height=480, bg="transparent")

barplot(coalcombNEI/1000,
        main="Total PM2.5 Emission from Coal Combustion Sources in US",
        xlab="Year",
        ylab="Total PM2.5 Emission (ktons)")

dev.off()
