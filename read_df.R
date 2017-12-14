read_df <- function() {

if (!file.exists('household_power_consumption.txt')){
  unzip("exdata%2Fdata%2Fhousehold_power_consumption.zip")
}

column_names <- colnames(read.csv('household_power_consumption.txt', 
                                  nrows = 1, sep=';'))
dates <- read.csv('household_power_consumption.txt', sep=';')[,1]
dates <- as.Date(strptime(dates,'%d/%m/%Y'))
dates_required <- as.Date(c('2007-02-01','2007-02-02'))
dates_required_id <- c(which(dates == dates_required[1]),
                       which(dates == dates_required[2]))

df <- read.csv('household_power_consumption.txt',sep=';', header = TRUE,
               skip = dates_required_id[1]-1, 
               nrows = length(dates_required_id),
               na.strings="?")

colnames(df) <- column_names
#df$Date <- dates_required
#df$Time <- strptime(df$Time, '%H:%M:%S')
DateTime <- strptime(paste(df$Date, df$Time, sep=" "),
                     "%d/%m/%Y %H:%M:%S")
head(DateTime)
df <- cbind(DateTime,df)
rm(dates, dates_required, dates_required_id, column_names, DateTime)

return(df)

}






