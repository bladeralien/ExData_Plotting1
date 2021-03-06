hpc = read.table("household_power_consumption.txt", header=TRUE, sep=";", quote="", na.string="?")
hpcsub = subset(hpc, as.Date(hpc$Date, "%d/%m/%Y")>=as.Date("2007-02-01") & as.Date(hpc$Date, "%d/%m/%Y")<=as.Date("2007-02-02"))
png(filename="plot1.png")
hist(hpcsub$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()