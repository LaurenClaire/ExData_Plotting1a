#Plot 3

plot3 <- function() {

png("plot3.png", width=400, height=400)

  plot(data$timestamp,data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(data$timestamp,data$Sub_metering_2,col="red")
  lines(data$timestamp,data$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
