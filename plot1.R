d <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', stringsAsFactors=FALSE)
d <- d[d$Date %in% c('1/2/2007','2/2/2007'),]
d$dt <- strptime(paste(d$Date,d$Time),'%d/%m/%Y %H:%M:%S')
png('plot1.png',480,480)
hist(d$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)')
dev.off()
