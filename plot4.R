d <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
d<- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

d$Date2 <- strptime(paste(d$Date,d$Time), "%d/%m/%Y %H:%M:%S")

#Plot4
png(file = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

plot(d$Date2,d$Global_active_power, ylab = "Global Active Power",xlab = "", type="l")

plot(d$Date2,d$Voltage, ylab = "Voltage", xlab = "datetime", type="l")

plot(d$Date2,d$Sub_metering_1, ylab = "Energy sub metering",xlab = "", type="l")
points(d$Date2,d$Sub_metering_2,col='red', type="l")
points(d$Date2,d$Sub_metering_3,col='blue', type="l")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col=c("black", "red", "blue"))

plot(d$Date2,d$Global_reactive_power, ylab = "Global_reactive_power",xlab = "datetime", type="l")

dev.off()