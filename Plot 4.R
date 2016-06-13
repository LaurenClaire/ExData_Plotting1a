 #Plot 4
 
 png("plot4.png", width=400, height=400)

    par(mfrow=c(2,2)
     # Plot 1
    plot(data$Time, data$Global_active_power,
         type="l",
         xlab="",
         ylab="Global Active Power")
    # Plot 2
    plot(data$Time, data$Voltage, type="l",
         xlab="datetime", ylab="Voltage")
    # Plot 3
    plot(data$Time, data$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")
    lines(data$Time, data$Sub_metering_2, col="red")
    lines(data$Time, data$Sub_metering_3, col="blue")
    legend("topright",
           col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           type="1",
           box.lwd=0)
    # Plot 4
    plot(data$Time, data$Global_reactive_power, type="1",
         xlab="datetime", ylab="Global_reactive_power")
    
    
    #Output
    dev.copy(png, file="plot4.png", width=480, height=480)
    dev.off()

}
