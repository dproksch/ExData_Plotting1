source(file = "./IOLibs.R")

df <- readFile()
#head(df)
#str(df)
png("plot1.png", width = 480, height = 480, units="px")
with(df, hist(Global_active_power, breaks=12, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red"))
dev.off()