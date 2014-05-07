data <- read.table(file = "household_power_consumption.txt", 
                   sep = ";", skip = 66637, nrows = 2880, as.is=F)
data$V1 <- as.character(data$V1)
data$V2 <- as.character(data$V2)
df <- paste(data$V1, data$V2, sep = " ")
DT <- as.POSIXct(df, tz="CEST", format = "%d/%m/%Y %H:%M:%S")
plot(DT, data$V3, xlab="", ylab="Global Active Power (kilowatts)", 
     col="black", type = "l", cex.axis=0.7, cex.lab=0.7)