source("readPowerData.R")

plot1 <- function(pwr=NULL) {
   if(is.null(pwr))
      pwr <- readPowerData()
   
   # Set the output device
   png("plot1.png", width=480, height=480)
   
   # Plot the data
   hist(pwr$Global_active_power,
        main="Global Active Power",
        xlab="Global Active Power (kilowatts)",
        ylab="Frequency",
        col="red")
   
   # Close the device
   dev.off()
   
}