
#plot for sub metering 1, 2, and 3

with (jan2007_data2, plot(date.time, Sub_metering_1, type="l", ylab="Energy Submetering", xlab=""))
with (jan2007_data2, lines(date.time, Sub_metering_2, type="l", col="red"))
with (jan2007_data2, lines(date.time, Sub_metering_3, type="l", col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.copy(png,"plot3.png", width=480, height=480)
dev.off()

