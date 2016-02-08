# Read datafile and subset for specific dates
dateTime <- function(date, time) {
   return (strptime(paste(date,time), "%d/%m/%Y%H:%M:%S"))
}

readPowerData <- function() {
   fileName <- "household_power_consumption.txt"
   
   # Missing data is coded as question mark
   pwrD <- read.table(fileName, header=TRUE,sep=";",
                      colClasses=c("character","character",rep("numeric",7)),na="?")
   
   #Create Date/Time objects from date and time variables
   pwrD$Time <- strptime(paste (pwrD$Date,pwrD$Time), "%d/%m/%Y%H:%M:%S")
   pwrD$Date <- as.Date(pwrD$Date, "%d/%m/%Y")
   
   # subset for desired date range
   dateRange <- as.Date(c("2007-02-01","2007-02-02"), "%Y-%m-%d")
   pwrD <- subset(pwrD, Date %in% dateRange)
   
   return(pwrD)
   
}