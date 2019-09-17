#Loading file and naming variables

Electricpowerconsumption  <- read.table("household_power_consumption.txt", 
                                        skip=1, sep=";")

names(Electricpowerconsumption)<- c("Date","Time","Global_active_power",
                                    "Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

head(Electricpowerconsumption)


selecionar <- subset(Electricpowerconsumption,
                     Electricpowerconsumption$Date=="1/2/2007" | Electricpowerconsumption$Date =="2/2/2007")

#Verify the class of the variables
class(selecionar)
y <- lapply(selecionar, class)
unlist(y, use.names = TRUE)

#Changing the format "Date" and "Time"
selecionar$Date <- as.Date(selecionar$Date, format="%d/%m/%Y")
selecionar$Time <- strptime(selecionar$Time, format="%H:%M:%S")
selecionar[1:1440,"Time"] <- format(selecionar[1:1440,"Time"],
                                  "2007-02-01 %H:%M:%S")
selecionar[1441:2880,"Time"] <- format(selecionar[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

#Checking the class
class(selecionar)
y <- lapply(selecionar, class)
unlist(y, use.names = TRUE)

#Making Plot 1
hist(as.numeric(as.character(selecionar$Global_active_power)), 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", 
     col = "red")
#Recording the file PNG
png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(selecionar$Global_active_power)), 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)", 
     col = "red")
dev.off()


