hpc = read.table("household_power_consumption.txt", header=TRUE, sep=";", quote="", na.string="?")
hpcsub = subset(hpc, as.Date(hpc$Date, "%d/%m/%Y")>=as.Date("2007-02-01") & as.Date(hpc$Date, "%d/%m/%Y")<=as.Date("2007-02-02"))
png(filename="plot4.png")
par(mfrow=c(2, 2))
## Sub Photo 1
plot(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Global_active_power, type="l", xlab="", ylab="Global Active Power")
## Sub Photo 2
plot(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Voltage, type="l", xlab="datetime", ylab="Voltage")
## Sub Photo 3
plot(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Sub_metering_2, col="red")
lines(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))
## Sub Photo 4
plot(strptime(paste(hpcsub$Date, hpcsub$Time), format="%d/%m/%Y %H:%M:%S"), hpcsub$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()