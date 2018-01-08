data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                 +                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, "%d/%m/%Y")
head(data1)
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)
plot(data1$Global_active_power~data1$Datetime, type="l", xlab="", ylab="Global Active Power (killowatts)")
