# Note: the script assumes that the data has already been loaded
# Script plot1.R is the only one that includes the data loading

# Load the library lubrudate
library("lubridate")

# Convert dates into a datetime string
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

# Ensure the days of the week appear in English
Sys.setlocale(locale = "C")

# Open a PNG file
png(filename = "plot3.png", width = 480, height = 480)

# Draw the plot3
plot(wDays, data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(wDays, data$Sub_metering_2,type="l",col="red")
points(wDays, data$Sub_metering_3,type="l",col="blue")

# Add the legend
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red", "blue"), lwd="1")

# Close PNG device
dev.off()