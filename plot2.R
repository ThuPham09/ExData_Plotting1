
#Date & Time
date.time <- paste(jan2007_data2$Date, jan2007_data2$Time, sep=" ")
jan2007_data2$date.time  <- as.POSIXct(date.time)

with (jan2007_data2, plot(Global_active_power ~ date.time, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()

