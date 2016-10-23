mydataFile <- "./household_power_consumption.txt"

mydata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DatasubSet <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(DatasubSet$Global_active_power)

png("plot1.png", width=480, height=480)


hist(globalActivePower, main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")

dev.off()