source(file = "./IOLibs.R")

df <- readFile()

png("plot3.png", width = 480, height = 480, units="px")
with(df, { plot(DT, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
  lines(DT, Sub_metering_2, col="red")
  lines(DT, Sub_metering_3, col="blue")})
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=rep(1,3))
dev.off()