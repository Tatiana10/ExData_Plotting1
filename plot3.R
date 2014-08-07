d <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
d<- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]


#Plot3
d$Date2 <- strptime(paste(d$Date,d$Time), "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png", width = 480, height = 480)

plot(d$Date2,d$Sub_metering_1, ylab = "Energy sub metering",xlab = "", type="l")
points(d$Date2,d$Sub_metering_2,col='red', type="l")
points(d$Date2,d$Sub_metering_3,col='blue', type="l")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col=c("black", "red", "blue"))

dev.off()