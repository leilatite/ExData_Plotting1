source("readPowerData.R")

plot2 <- function(pwr=NULL) {
   if(is.null(pwr))
      pwr <- readPowerData()
   
   # Set the output device
   png("plot2.png", width=480, height=480)
   
   # Plot the data
   plot(pwr$Time, pwr$Global_active_power,  type="l", xlab="",
        ylab="Global Active Power (kilowatts)")
   
   # Close the device
   dev.off()
   
}