d <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
d<- d[d$Date=="1/2/2007" | d$Date=="2/2/2007",]

#Plot1
png(file = "plot1.png", width = 480, height = 480)
hist(d$Global_active_power,col="red", breaks = 12, main ="Global Active Power", xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()