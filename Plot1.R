library("dplyr")
library("data.table")

rawdata<-data.table(read.table("household_power_consumption.txt",header = TRUE, sep = ";"))
subsetdata<-rawdata[Date == "1/2/2007" | Date == "2/2/2007"]

# Plot Number One
GAP<-as.numeric(as.character(subsetdata$Global_active_power))
png(filename = "plot1.png",width=480,height=480)
hist(GAP,col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()