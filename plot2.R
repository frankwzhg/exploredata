uc_data<-read.csv.sql("household_power_consumption.txt",sql="select * from file where (Date='1/2/2007' or Date='2/2/2007')", header=TRUE, sep=";")
uc_data$weekday<-NA
x<-paste(uc_data$Date, uc_data$Time)
uc_data$weekday<-strptime(x, "%d/%m/%Y %H:%M:%S")
plot(uc_data$weekday, uc_data$Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()
