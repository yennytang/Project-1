data <- read.table(file = "household_power_consumption.txt", 
                   sep = ";", skip = 66637, nrows = 2880)
active <- unlist(data[3])
hist(active, main = paste("Global Active Power"), col="red", 
     ylim=c(0,1200), xlab = "Global Active Power (kilowatts)", 
     cex.axis = 0.7, cex.main = 0.9, cex.lab=0.9)