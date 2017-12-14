if (!exists("df")) {
  
  source('read_df.R')
  df <- read_df()
}

plot(df$DateTime, df$Global_active_power, 
     type="l", col="black", 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
