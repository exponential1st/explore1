mydata<-read.table("C:\\coursera\\exploratary\\household_power_consumption.txt", header= TRUE, na.strings = "?", sep = ";")
mydata$dt<-strptime(paste(mydata$Date,mydata$Time), format="%d/%m/%Y %H:%M:%S")
date1 <- strptime("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")
date2 <- strptime("2007-02-03 00:00:00", format="%Y-%m-%d %H:%M:%S")
data<-subset(mydata, dt>date1 & dt<date2)


png(filename="C:\\coursera\\exploratary\\plot2.png")
plot(data$dt,data$Global_active_power, type="l", main="power in time",ylab = "Global active power in kw")
dev.off()
