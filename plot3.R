data <- read.table(file = "household_power_consumption.txt", 
                   sep = ";", skip = 66637, nrows = 2880, as.is=F)
data$V1 <- as.character(data$V1)
data$V2 <- as.character(data$V2)
df <- paste(data$V1, data$V2, sep = " ")
DT <- as.POSIXct(df, tz="CEST", format = "%d/%m/%Y %H:%M:%S")
plot(DT, data$V7, type="s", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.7)
lines(DT, data$V8, type="s", col="red")
lines(DT, data$V9, type="s", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), cex=0.7, lwd=1)