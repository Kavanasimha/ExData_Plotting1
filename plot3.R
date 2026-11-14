d <- read.table('household_power_consumption.txt', header=TRUE, sep=';', na.strings='?', stringsAsFactors=FALSE)
d <- d[d$Date %in% c('1/2/2007','2/2/2007'),]
d$dt <- strptime(paste(d$Date,d$Time),'%d/%m/%Y %H:%M:%S')
png('plot3.png',480,480)
plot(d$dt,d$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(d$dt,d$Sub_metering_2,col='red')
lines(d$dt,d$Sub_metering_3,col='blue')
legend('topright',lty=1,col=c('black','red','blue'),legend=paste0('Sub_metering_',1:3))
dev.off()
