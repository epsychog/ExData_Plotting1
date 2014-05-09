# Note: the script assumes that the data has already been loaded
# Script plot1.R is the only one that includes the data loading

# Load the library lubrudate
library("lubridate")

# Convert dates into a datetime string
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

# Ensure the days of the week appear in English
Sys.setlocale(locale = "C")

# Open a PNG file
png(filename = "plot4.png", width = 480, height = 480)

# Prepare to draw 4 plots 
par(mfrow = c(2,2))

# Draw the plot on top-left
plot(wDays, data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

# Draw the plot on top-right
plot(wDays, data$Voltage,type="l",xlab="datetime",ylab="Voltage")
 
# Draw the plot on bottom-left
plot(wDays, data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(wDays, data$Sub_metering_2,type="l",col="red")
points(wDays, data$Sub_metering_3,type="l",col="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red", "blue"), lwd="1")
 
# Draw the plot on bottom right
plot(wDays, data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

# Close PNG device
dev.off()