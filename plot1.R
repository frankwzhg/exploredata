uc_data<-read.csv.sql("household_power_consumption.txt",sql="select * from file where (Date='1/2/2007' or Date='2/2/2007')", header=TRUE, sep=";")
hist(uc_data$Global_active_power, main="Global Active Power", xlab="Global Active Power(kilowtts)", col="red")
dev.copy(png, 'plot1.png', width=480, height=480)
dev.off()
