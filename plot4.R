source("readPowerData.R")

plot4 <- function(pwr=NULL) {
   if(is.null(pwr))
      pwr <- readPowerData()
   
   # Set the output device
   png("plot4.png", width=480, height=480)
   
   # Set up 2 rows and 2 columns for the plots
   par(mfrow=c(2,2))
   
   # Plot the data for the first graph
   plot(pwr$Time, pwr$Global_active_power,  type="l", xlab="",
        ylab="Global Active Power")
   
   # Plot the data for the second graph
   plot(pwr$Time, pwr$Voltage,  type="l", xlab="datetime",
        ylab="Voltage")   
   
   # Plot the data for the third graph
   plot(pwr$Time, pwr$Sub_metering_1,  type="l", col="black", xlab="",
        ylab="Energy sub metering")
   lines(pwr$Time, pwr$Sub_metering_2, col="red")
   lines(pwr$Time, pwr$Sub_metering_3, col="blue")
   legend("topright", col=c("black", "red", "blue"),
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          lty=1, box.lwd=0)   
   
   # Plot the data for the fourth graph
   plot(pwr$Time, pwr$Global_reactive_power,  type="n", xlab="datetime",
        ylab="Global_reactive_power")
   lines(pwr$Time, pwr$Global_reactive_power)
   
   # Close the device
   dev.off()
   
}