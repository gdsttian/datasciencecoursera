Sys.setlocale("LC_TIME","English")
setwd("E:/Backup/Coursera/04_Exploratory Data Analysis/Course Projects/Project01")
dtHPC <- read.table("household_power_consumption.txt", header=FALSE, sep=";",
                    na.strings = "?", nrows=2880, skip=66637, stringsAsFactors=FALSE)
colnames(dtHPC) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
                     "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2",
                     "Sub_metering_3")
dtHPC$Time <- strptime(with(dtHPC, paste(Date, Time)), "%d/%m/%Y %T")
dtHPC$Date <- as.Date(dtHPC$Date, "%d/%m/%Y")

png(file = "plot4.png", bg = "transparent")
par(mfrow=c(2, 2))
with(dtHPC, plot(Time, Global_active_power, type="l", xlab="",
                 ylab="Global Active Power"))
with(dtHPC, plot(Time, Voltage, type="l", xlab="datetime",
                 ylab="Voltage"))
with(dtHPC, plot(Time, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(dtHPC, points(Time, Sub_metering_2, type="l", col="red"))
with(dtHPC, points(Time, Sub_metering_3, type="l", col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lwd=1, bty="n")
with(dtHPC, plot(Time, Global_reactive_power, type="l", xlab="datetime",
                 ylab="Global_reactive_power"))
par(mfrow=c(1, 1))
dev.off()