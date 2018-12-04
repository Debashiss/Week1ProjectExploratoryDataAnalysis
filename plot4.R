
R version 3.4.4 (2018-03-15) -- "Someone to Lean On"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> dataset<-"./Data/household_power_consumption.txt" ##downloading data into local directory 
> mydata<-read.table(dataset,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".") ##reading data in
> subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
Error in data$Date : object of type 'closure' is not subsettable
> smalldata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,]
> datetime <- strptime(paste(smalldata$Date, smalldata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") ##subsetting data
> globalActivePower <- as.numeric(smalldata$Global_active_power)
> globalReactivePower <- as.numeric(smalldata$Global_reactive_power)
> voltage <- as.numeric(smalldata$Voltage)
> subMetering1 <- as.numeric(smalldata$Sub_metering_1)
> subMetering2 <- as.numeric(smalldata$Sub_metering_2)
> subMetering3 <- as.numeric(smalldata$Sub_metering_3)
> png("plot4.png", width=480, height=480) ## setting up PNG file device shell
> par(mfrow = c(2, 2)) ##setting up four graphs layout
> plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2) ##plotting charts
> plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
> plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
> lines(datetime, subMetering2, type="l", col="red")
> lines(datetime, subMetering3, type="l", col="blue")
> legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o") ##setting up legend color coding
> plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
> dev.off() closing it out to obtain png file 
Error: unexpected symbol in "dev.off() closing"
> dev.off() ##closing it out to obtain png file 
null device 
          1 
> 
