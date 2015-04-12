library("dplyr")
library("data.table")

rawdata<-data.table(read.table("household_power_consumption.txt",header = TRUE, sep = ";"))
subsetdata<-rawdata[Date == "1/2/2007" | Date == "2/2/2007"]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot Number Two
GAP<-as.numeric(as.character(subsetdata$Global_active_power))
png(filename = "plot2.png",width=480,height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()