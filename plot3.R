if (!exists("df")) {
  
  source('read_df.R')
  df <- read_df()
}
colors <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(df$DateTime, df$Sub_metering_1, type="l", 
     col=colors[1], xlab="", ylab="Energy sub metering")
lines(df$DateTime, df$Sub_metering_2, col=colors[2])
lines(df$DateTime, df$Sub_metering_3, col=colors[3])
legend("topright", legend=labels, col=colors, lty="solid")
