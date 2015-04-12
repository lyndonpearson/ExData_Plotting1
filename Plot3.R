library("dplyr")
library("data.table")

data<-data.table(read.table("household_power_consumption.txt",header = TRUE, sep = ";"))
subsetdata<-rawdata[Date == "1/2/2007" | Date == "2/2/2007"]

# Plot Number Three
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_met_1<-as.numeric(as.character(subsetdata$Sub_metering_1))
sub_met_2<-as.numeric(as.character(subsetdata$Sub_metering_2))
sub_met_3<-as.numeric(as.character(subsetdata$Sub_metering_3))
png("plot3.png", width=480, height=480)
plot(datetime, sub_met_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime,sub_met_2,type = "l",col = "red")
lines(datetime,sub_met_3,type = "l",col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
dev.off()



