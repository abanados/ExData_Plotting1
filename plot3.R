#Making Plot 3
plot(selecionar$Time,selecionar$Sub_metering_1,type="n",xlab="",
     ylab="Energy sub metering")
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#Recording the file PNG
png("plot3.png", width=480, height=480)
plot(selecionar$Time,selecionar$Sub_metering_1,type="n",xlab="",
     ylab="Energy sub metering")
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(selecionar,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

