# Load the library sqlfd
library("sqldf")

# Move to the directory where the data file is
setwd('C:\\epsychog\\Trainings & Events\\Data Science\\Data Science Specialisation (coursera)\\4. Exploratory Data Analysis\\CourseProject1')

# Read in only the data fromfor 1st & 2nd Feb 2007
myFile <- "household_power_consumption.txt"
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
data <- read.csv.sql(myFile, sql=mySql, sep=";")

# Open a PNG file
png(filename = "plot1.png", width = 480, height = 480)

#Draw the plot1
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")

# Close PNG device
dev.off()