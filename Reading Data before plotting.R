#First calculate a rough estimate of how much memory the dataset will require in memory before 
#reading into R.
library(pryr)
object_size("~/13.Data science/Exploring Data/household_power_consumption.txt")

#code for reading the data. The dataset has 2,075,259 rows and 9 columns
power_consu <- read.csv("~/13.Data science/Exploring Data/household_power_consumption.txt", sep=";")
str(power_consu)
View(power_consu)
power_consu$Date[20]

# the data from the dates 2007-02-01 and 2007-02-02 (2007-01- Jan and 2007 - 02- Jan)

power_consu$Date <- as.Date(power_consu$Date, "%d/%m/%Y")
head(power_consu)
power_consu$Date[45000]

jan2007_data <- subset(power_consu,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
head(jan2007_data)
str(jan2007_data) #'data.frame':	2880 obs. of  9 variables

# Since all variables in the dataframe except Date are Chr (string)
# Replace all "?" which is missing value to NA
library(naniar)
jan2007_data2 <- as.data.frame(replace_with_na_all(data = jan2007_data, 
                                                  condition = ~.x %in% c ("?")))
str(jan2007_data2) 
# Change Chr to Numeric vectors
jan2007_data2$Global_active_power <- as.numeric(jan2007_data2$Global_active_power)
jan2007_data2$Global_reactive_power <- as.numeric(jan2007_data2$Global_reactive_power)
jan2007_data2$Voltage <- as.numeric(jan2007_data2$Voltage)
jan2007_data2$Global_intensity <- as.numeric(jan2007_data2$Global_intensity)
jan2007_data2$Sub_metering_1 <- as.numeric(jan2007_data2$Sub_metering_1)
jan2007_data2$Sub_metering_2 <- as.numeric(jan2007_data2$Sub_metering_2)
jan2007_data2$Sub_metering_3 <- as.numeric(jan2007_data2$Sub_metering_3)
str(jan2007_data2) 



