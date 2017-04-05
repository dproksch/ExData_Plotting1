source(file = "./IOLibs.R")

df <- readFile()

png("plot2.png", width = 480, height = 480, units="px")
with(df, plot(DT, Global_active_power, xlab="", ylab="Global active power (kilowatts)", type="l"))
dev.off()