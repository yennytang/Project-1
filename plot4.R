data <- read.table(file = "household_power_consumption.txt", 
                   sep = ";", skip = 66637, nrows = 2880, as.is=F)
data$V1 <- as.character(data$V1)
data$V2 <- as.character(data$V2)
df <- paste(data$V1, data$V2, sep = " ")
DT <- as.POSIXct(df, tz="CEST", format = "%d/%m/%Y %H:%M:%S")
a <- plot(DT, data$V3, xlab="", ylab="Global Active Power", 
          col="black", type = "l", cex.axis=0.7, cex.lab=0.8)
b <- plot(DT, data$V5, xlab="datetime", ylab="Voltage", type="l", cex.axis=0.7, cex.lab=0.8, 
          col="black")
c <- plot(DT, data$V7, type="s", ylab="Energy sub metering", xlab="", cex.lab=0.8, 
          cex.axis=0.7, col="black")
lines(DT, data$V8, type="s", col="red")
lines(DT, data$V9, type="s", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), cex=0.7, pt.cex=3, y.intersp=0.6, x.intersp=0.2, 
       lwd=1, bty="n") 
d <- plot(DT, data$V4, xlab="datetime", ylab="Global_reactive_power", type="l",
          cex.axis=0.6, cex.lab=0.8, col="black")
par(mfrow = c(2, 2), mar=c(5,4,2,1))
with(data,{
        a 
        b
        c
        d
})