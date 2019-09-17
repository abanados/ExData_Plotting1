#Making Plot 4
#Joining the graphics
par(mfrow=c(2,2), mar = c(4,4,2.5,2))
#Graphics
plot(selecionar$Time, as.numeric(as.character(selecionar$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power")
plot(selecionar$Time, as.numeric(as.character(selecionar$Voltage)), 
     type = "l", xlab = "datetime", ylab = "Voltage")
plot(selecionar$Time,selecionar$Sub_metering_1,type="n",xlab="",
     ylab="Energy sub metering")
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", "(x,y)", col=c("black","red","blue"),
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), cex =0.5, bty = "n", lty=1) 
plot(selecionar$Time, as.numeric(as.character(selecionar$Global_reactive_power )),
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")
#Recording the file PNG
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2), mar = c(4,4,2.5,2))
plot(selecionar$Time, as.numeric(as.character(selecionar$Global_active_power)), 
     type = "l", xlab = "", ylab = "Global Active Power")
plot(selecionar$Time, as.numeric(as.character(selecionar$Voltage)), 
     type = "l", xlab = "datetime", ylab = "Voltage")
plot(selecionar$Time,selecionar$Sub_metering_1,type="n",xlab="",
     ylab="Energy sub metering")
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", "(x,y)", col=c("black","red","blue"),
       legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), cex =0.5, bty = "n", lty=1) 
plot(selecionar$Time, as.numeric(as.character(selecionar$Global_reactive_power )),
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
