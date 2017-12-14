if (!exists("df")) {
  source('read_df.R')
  df <- read_df()
}

hist(df$Global_active_power, col = 'red',
     xlab = "Global Active Power (kilowatts)",
     ylab = 'Frequency',
     main = 'Global Active Power')
