library(dplyr)
#
# This is the I/O library for Data Plotting instead of replicating code 
# in four (4) source files, import this library and use the pre-defined 
# functions
#

readFile <- function() {
  f <- read.csv(file = 'data/household_power_consumption.txt', header = TRUE, sep = ';')
  df = data.frame(f) 
  df$Date <- as.Date(df$Date,  format= "%d/%m/%Y")
  subset(df, Date >= "2007/02/01" & Date <= "2007/02/02")
}

# for testing purposes
#df <- readFile()
#head(df)
