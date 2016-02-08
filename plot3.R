source("readPowerData.R")

plot3 <- function(pwr=NULL) {
   if(is.null(pwr))
      pwr <- readPowerData()
   
   # Set the output device
   png("plot3.png", width=480, height=480)
   
   # Plot the data
   plot(pwr$Time, pwr$Sub_metering_1,  type="l", col="black", xlab="",
        ylab="Energy sub metering")
   
   lines(pwr$Time, pwr$Sub_metering_2, col="red")
   
   lines(pwr$Time, pwr$Sub_metering_3, col="blue")
   
   # Add legend to explain the data on the graph
   legend("topright", col=c("black", "red", "blue"),
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
   
   # Close the device
   dev.off()
   
}