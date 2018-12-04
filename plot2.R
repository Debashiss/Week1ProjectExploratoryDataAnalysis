
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
> smalldata<-subset(mydata,mydata$Date=="1/2/2007"|mydata$Date=="2/2/2007")
> smalldata$Date<-as.Date(smalldata$Date,format="%d/%m/%Y") ##transforming date and time from character vars into objects of Date and POSIXlt
> smalldata$Time<-strptime(smalldata$Time,format="%H:%M:%S")
> smalldata[1:1440,"Time"]<-format(smalldata[1:1440,"Time"],"2007-02-01 %H:%M:%S")
> smalldata[1441:2880,"Time"]<-format(smalldata[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
> png("plot2.png",width=480,height=480) ##setting up PNG chart shell
> plot(smalldata$Time,as.numeric(as.character(smalldata$Global_active_power)),xlab="",ylab="Global Activel Power (kilowatts)") ##calling plot functionplot(
> dev.off()
null device 
          1 
> 
