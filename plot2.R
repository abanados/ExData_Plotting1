#Making Plot 2
plot(selecionar$Time, as.numeric(as.character(selecionar$Global_active_power)),
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
#Recording the file PNG
png("plot2.png", width=480, height=480)
plot(selecionar$Time,as.numeric(as.character(selecionar$Global_active_power)),
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()


