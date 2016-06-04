mydata<-read.table("C:\\coursera\\exploratary\\household_power_consumption.txt", header= TRUE, na.strings = "?", sep = ";")
mydata$dt<-strptime(paste(mydata$Date,mydata$Time), format="%d/%m/%Y %H:%M:%S")
date1 <- strptime("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")
date2 <- strptime("2007-02-03 00:00:00", format="%Y-%m-%d %H:%M:%S")
data<-subset(mydata, dt>date1 & dt<date2)


png(filename="C:\\coursera\\exploratary\\plot3.png")
plot(data$dt,data$Sub_metering_1, type="l", main="power in time",ylab = "Global active power in kw" ,xlab ="time")
lines(data$dt,data$Sub_metering_2, type="l", main="power in time",col="red")
lines(data$dt,data$Sub_metering_3, type="l", main="power in time",col="blue")
legend("topright",legend=c("meter1","meter2","meter3"),col=c("black","red","blue"), lwd=3)
dev.off()

