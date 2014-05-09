# Note: the script assumes that the data has already been loaded
# Script plot1.R is the only one that includes the data loading

# Load the library lubrudate
library("lubridate")

# Convert dates into a datetime string
wDays <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

# Ensure the days of the week appear in English
Sys.setlocale(locale = "C")

# Open a PNG file
png(filename = "plot2.png", width = 480, height = 480)

# Draw the plot2
plot(wDays, data$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

# Close PNG device
dev.off()