d <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
d<- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

#Plot2
d$Date2 <- strptime(paste(d$Date,d$Time), "%d/%m/%Y %H:%M:%S")

png(file = "plot2.png", width = 480, height = 480)
plot(d$Date2,d$Global_active_power, ylab = "Global Active Power (kilowatts)",xlab = "", type="l")
dev.off()