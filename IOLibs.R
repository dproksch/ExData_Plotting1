library(data.table)
library(lubridate)
#
# This is the I/O library for Data Plotting instead of replicating code 
# in four (4) source files, import this library and use the pre-defined 
# functions
#

readFile <- function() {
  f <- fread("data/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?", colClasses=rep("chr",9))
  
  #df = data.frame(f) 
  #df<-df  %>% 
  f <- f %>%
    filter(Date == "1/2/2007" | Date == "2/2/2007") %>% 
    mutate(Date=dmy(Date), 
           Time=as.ITime(strptime(Time, "%H:%M:%S")), 
           DT=ymd_hms(paste(Date, Time)),
           Global_active_power=as.numeric(Global_active_power),
           Global_reactive_power=as.numeric(Global_reactive_power),
           Voltage=as.numeric(Voltage),
           Global_intensity=as.numeric(Global_intensity),
           Sub_metering_1=as.numeric(Sub_metering_1),
           Sub_metering_2=as.numeric(Sub_metering_2),
           Sub_metering_3=as.numeric(Sub_metering_3))
}

# for testing purposes
#df <- readFile()
#head(df)
