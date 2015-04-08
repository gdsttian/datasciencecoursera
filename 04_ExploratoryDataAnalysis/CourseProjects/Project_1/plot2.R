Sys.setlocale("LC_TIME","English")
setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project01")
dtHPC <- read.table("household_power_consumption.txt", header=FALSE, sep=";",
                    na.strings = "?", nrows=2880, skip=66637, stringsAsFactors=FALSE)
colnames(dtHPC) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
                     "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2",
                     "Sub_metering_3")
dtHPC$Time <- strptime(with(dtHPC, paste(Date, Time)), "%d/%m/%Y %T")
dtHPC$Date <- as.Date(dtHPC$Date, "%d/%m/%Y")

png(file = "plot2.png", bg = "transparent")
with(dtHPC, plot(Time, Global_active_power, type="l", xlab="",
                 ylab="Global Active Power (kilowatts)"))
dev.off()