mydataFile <- "./household_power_consumption.txt"
mydata <- read.table(mydataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DatasubSet <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(DatasubSet$Date, DatasubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(DatasubSet$Global_active_power)

subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(date_time, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, subMetering2, type="l", col="red")
lines(date_time, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty=1, lwd=2.5)

dev.off()