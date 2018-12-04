
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

> getwd()
[1] "C:/Users/Debashiss/Documents"
> getwd()
[1] "C:/Users/Debashiss/Desktop/Exploratory Data Analysis/Week 1"
> dataset<-"./Data/household_power_consumption.txt" ##downloading data into local directory 
> mydata<-read.table(dataset,header=TRUE,sep=";"stringsAsFactors=FALSE,dec=".") ##reading data in
Error: unexpected symbol in "mydata<-read.table(dataset,header=TRUE,sep=";"stringsAsFactors"
> mydata<-read.table(dataset,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".") ##reading data in
> smalldata<-mydata[smalldata$Date%in%c("1/2/2007","2/2/2007"),] ##subsetting/extracting two days of data
Error in smalldata$Date %in% c("1/2/2007", "2/2/2007") : 
  object 'smalldata' not found
> smalldata<-mydata[mydata$Date%in%c("1/2/2007","2/2/2007"),] ##subsetting/extracting two days of data
> GlobalActivePower<-as.numeric(smalldata$Global_active_power) ##honing in on key variables
> png("plot1.png",width=480,height=480) ## setting up PNG chart shell for plot1
> hist(GlobalActivePower,col="red",main="Global Active Power",xlab="Global Active Power(in kilowatt)",ylab="Frequency") ## setting up histogram as a PNG file
> dev.off() ##closing out to get complete chart in PNG file format
null device 
          1 
> 
