mydata<-read.table("C:\\coursera\\exploratary\\household_power_consumption.txt", header= TRUE, na.strings = "?", sep = ";")
mydata$dt<-strptime(paste(mydata$Date,mydata$Time), format="%d/%m/%Y %H:%M:%S")
date1 <- strptime("2007-02-01 00:00:00", format="%Y-%m-%d %H:%M:%S")
date2 <- strptime("2007-02-03 00:00:00", format="%Y-%m-%d %H:%M:%S")
data<-subset(mydata, dt>date1 & dt<date2)

hist(data$Global_active_power, col="red", main="Gloable active power",xlab =" global active power in kilowatts")

png(filename="C:\\coursera\\exploratary\\plot1.png")
hist(data$Global_active_power, col="red", main="Gloable active power",xlab =" global active power in kilowatts")