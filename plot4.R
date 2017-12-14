if (!exists("df")) {
  source('read_df.R')
  df <- read_df()
}
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
colors <- c("black","red","blue")
par(mfrow=c(2,2))
plot(df$DateTime, df$Global_active_power, 
     type="l", col="green", xlab="", ylab="Global Active Power")
plot(df$DateTime, df$Voltage, 
     type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(df$DateTime, df$Sub_metering_1, 
     type="l", xlab="", ylab="Energy sub metering")
lines(df$DateTime, df$Sub_metering_2, type="l", col="red")
lines(df$DateTime, df$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=colors)
plot(df$DateTime, df$Global_reactive_power, 
     type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")