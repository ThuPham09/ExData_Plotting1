# Plot 4 multiple plots

# multiple plot
par(mfrow = c(2, 2)) 
# Upper left plot
with (jan2007_data2, plot(date.time, Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2))
# Upper right plot
with (jan2007_data2, plot(date.time, Voltage, type="l", xlab="datetime", ylab="Voltage"))
# Bottom left plot
with (jan2007_data2, plot(date.time, Sub_metering_1, type="l", ylab="Energy Submetering", xlab=""))
      with (jan2007_data2,lines(date.time, Sub_metering_2, type="l", col="red"))
            with (jan2007_data2,lines(date.time, Sub_metering_3, type="l", col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="n")
# Bottom right plot
with (jan2007_data2, plot(date.time, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2))

dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
