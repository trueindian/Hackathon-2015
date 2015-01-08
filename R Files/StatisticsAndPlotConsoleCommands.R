# Objective #1:-Plotting Velocity Passenger Flow and Overall Traffic Flow With Respect To Months depending on the factor (Quarter) and thus finding out the
#peak flow month.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Passenger Traffic File)
	PassengerDetails <- ReadTextFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Passenger Traffic.txt")

#Reading required columns out of the file
	OverallTraffic <- ReadGeneralColumn (PassengerDetails, 2)
	PassengersUsingVAFlights <- ReadGeneralColumn (PassengerDetails, 3)
	
	#Factor Deciding Values
	QuarterTypes <- ReadGeneralColumn (PassengerDetails, 5)

#Plotting of two plots in a single column using 2-row plot system
	par(mfrow = c(2,1))
	plot (OverallTraffic, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Overall Traffic With Respect To Months", xlab="Months", xaxt="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	plot (PassengersUsingVAFlights, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Passenger Using VA Flights With Respect To Months", xlab="Months", xaxt ="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------

#Objective 2:-Plotting of Quarterly Standard Deviation of Passengers using VA Flights with respect to mean (Diagramatic Prediction and Representation of deviation from normal behavior).
#Plotting Method Used:-Scatter Plot

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Passenger Traffic File)
	PassengerDetails <- ReadTextFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Passenger Traffic.txt")

#Reading values Quarterly Basis for analysis
	FirstQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 1:3, 3)
	SecondQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 4:6, 3)
	ThirdQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 7:9, 3)
	FourthQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 10:12, 3)

#Computation of Quarterly Standard Deviation and Overall Standard Deviation
	FirstQuarter_SD <- sd(FirstQuarter_PassengersUsingVAFlights)
	SecondQuarter_SD <- sd(SecondQuarter_PassengersUsingVAFlights)
	ThirdQuarter_SD <- sd(ThirdQuarter_PassengersUsingVAFlights)
 	FourthQuarter_SD <- sd(FourthQuarter_PassengersUsingVAFlights)
	Final_SD <- c(FirstQuarter_SD, SecondQuarter_SD, ThirdQuarter_SD, FourthQuarter_SD)

#Computation of Quarterly Mean Values and Overall Mean Value
	FirstQuarter_Mean <- mean(FirstQuarter_PassengersUsingVAFlights)
	SecondQuarter_Mean <- mean(SecondQuarter_PassengersUsingVAFlights)
	ThirdQuarter_Mean <- mean(ThirdQuarter_PassengersUsingVAFlights)
	FourthQuarter_Mean <- mean(FourthQuarter_PassengersUsingVAFlights)
	Final_Mean <- c(FirstQuarter_Mean, SecondQuarter_Mean, ThirdQuarter_Mean, FourthQuarter_Mean)

#Importing of GGPLOT2 library and final plotting of data
	library(ggplot2)
	Quarters <- c("Q1", "Q2", "Q3", "Q4")
	ggplot(PassengerDetails, aes(x=Quarters, y=Final_Mean, colour="blue")) + 
    		geom_errorbar(aes(ymin=Final_Mean-Final_SD, ymax=Final_Mean+Final_SD), width=.1) +
    		geom_line() +
    		geom_point() +
    		ggtitle("Standard Deviation WRT Mean")


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------

# Objective #3:-Plotting Loyalty Traffic and General Traffic based on factor (here quarters) with respect to months and thus visually depicting the peak
#loyality member and general member flows.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Total Loyality Members)
	TotalLoyalityData<- ReadCSVFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Total Loaylity Members.csv")

#Reading required columns out of the file
	LoyaltyMembers <- ReadGeneralColumn (TotalLoyalityData, 3)
	NonLoyalityMembers <- ReadGeneralColumn (TotalLoyalityData, 4)
	
	#Factor Deciding Values
	QuarterTypes <- ReadGeneralColumn (PassengerDetails, 5)

#Plotting of two plots in a single column using 2-row plot system
	par(mfrow = c(2,1))
	plot (LoyaltyMembers, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Loyality Members Count With Respect To Months", xlab="Months", xaxt="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	plot (NonLoyalityMembers, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Non Loyalty Members Count With Respect To Months", xlab="Months", xaxt ="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))



#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------

# Objective #4:-Plotting of Quarterly Standard Deviation Of Loyality Members of Virgin Australia with respect to mean using Box Plot and analyzing the
# otlier behavior of the plot.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Total Loyality Members)
	TotalLoyalityData<- ReadCSVFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Total Loaylity Members.csv")


#Reading values Quarterly Basis for analysis
	FirstQuarter_LoyaltyMembers <- TotalLoyalityData[1:3,3]
	SecondQuarter_LoyaltyMembers <- TotalLoyalityData[4:6,3]
	ThirdQuarter_LoyaltyMembers <- TotalLoyalityData[7:9,3]
	FourthQuarter_LoyaltyMembers <- TotalLoyalityData[10:12,3]


#Computation of Quarterly Standard Deviation and Overall Standard Deviation
	FirstQuarter_SD <- sd(FirstQuarter_LoyaltyMembers)
	SecondQuarter_SD <- sd(SecondQuarter_LoyaltyMembers)
	ThirdQuarter_SD <- sd(ThirdQuarter_LoyaltyMembers)
	FourthQuarter_SD <- sd(FourthQuarter_LoyaltyMembers)
	Final_SD <- c(FirstQuarter_SD, SecondQuarter_SD, ThirdQuarter_SD, FourthQuarter_SD)


#Computation of Quarterly Mean Values and Overall Mean Value
	FirstQuarter_Mean <- mean(FirstQuarter_LoyaltyMembers)
	SecondQuarter_Mean <- mean(SecondQuarter_LoyaltyMembers)
	ThirdQuarter_Mean <- mean(ThirdQuarter_LoyaltyMembers)
	FourthQuarter_Mean <- mean(FourthQuarter_LoyaltyMembers)
	Final_Mean <- c(FirstQuarter_Mean, SecondQuarter_Mean, ThirdQuarter_Mean, FourthQuarter_Mean)


#Assignment of cummulative data to a data frame and then plotting and analyzing the behavior on box plot.
	dataset <- data.frame(Final_SD,Final_Mean)
	boxplot(Final_Mean ~ Final_SD, dataset, col="red", xlab="Quartile Mean", ylab="Quartile Standard Deviation", main="Quartile SD WRT Quartile Mean Using Box Plot")




#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------


# Objective #5:- Out of the Loyalty Members of Virgin Australia plotting loyalty benefit availing and non-benfit availing loyalty members with respect
# to months and analyzing the trend.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Loyality Members Availing Facility)
	LoyalityAvailingMembers  <- ReadTextFile ("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Loyality Members Availing Facility.txt")


#Reading required columns out of the file
	LoyalityAvailingCustomers <- ReadGeneralColumn (LoyalityAvailingMembers, 3)
	NonLoyalityAvailingCustomers <- ReadGeneralColumn (LoyalityAvailingMembers, 4)
	
	#Factor Deciding Values
	QuarterTypes <- ReadGeneralColumn (LoyalityAvailingMembers, 5)


#Plotting of two plots in a single column using 2-row plot system
	par(mfrow = c(2,1))
	plot (LoyalityAvailingCustomers, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Loyality Members Count With Respect To Months", xlab="Months", xaxt="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
	plot (NonLoyalityAvailingCustomers, pch=QuarterTypes, col=c("blue", "red", "green", "purple"), main="Non Loyalty Members Count With Respect To Months", xlab="Months", xaxt ="n")
	axis (1, at = 1:12, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))



#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------


# Objective #6:-Plotting of Quarterly Standard Deviation of Loyalty Benefir Availing Customers with respect to mean with factor being Quarter using MATPLOT.


#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")


#Reading the File Containing Data (Here Loyality Members Availing Facility)
	LoyalityAvailingMembers  <- ReadTextFile ("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Loyality Members Availing Facility.txt")


#Reading values Quarterly Basis for analysis
	FirstQuarter_LoyaltyAvailingMembers <- LoyalityAvailingMembers [1:3,3]
	SecondQuarter_ LoyaltyAvailingMembers <- LoyalityAvailingMembers [4:6,3]
	ThirdQuarter _LoyaltyAvailingMembers <- LoyalityAvailingMembers [7:9,3]
	FourthQuarter_ LoyaltyAvailingMembers <- LoyalityAvailingMembers [10:12,3]


#Computation of Quarterly Standard Deviation and Overall Standard Deviation
	FirstQuarter_SD <- sd(FirstQuarter_LoyaltyAvailingMembers)
	SecondQuarter_SD <- sd(SecondQuarter_LoyaltyAvailingMembers)
	ThirdQuarter_SD <- sd(ThirdQuarter_LoyaltyAvailingMembers)
	FourthQuarter_SD <- sd(FourthQuarter_LoyaltyAvailingMembers)
	Final_SD <- c(FirstQuarter_SD, SecondQuarter_SD, ThirdQuarter_SD, FourthQuarter_SD)


#Computation of Quarterly Mean Values and Overall Mean Value
	FirstQuarter_Mean <- mean(FirstQuarter_ LoyaltyAvailingMembers)
	SecondQuarter_Mean <- mean(SecondQuarter_ LoyaltyAvailingMembers)
	ThirdQuarter_Mean <- mean(ThirdQuarter_ LoyaltyAvailingMembers)
	FourthQuarter_Mean <- mean(FourthQuarter_ LoyaltyAvailingMembers)
	Final_Mean <- c(FirstQuarter_Mean, SecondQuarter_Mean, ThirdQuarter_Mean, FourthQuarter_Mean)

# Plotting of the standard deviation using MATPLOT and analyzing the trend
	matplot(Final_Mean, Final_SD, type=”l” col="red", xlab="Quartile Mean", ylab="Quartile Standard Deviation")


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------


# Objective #6:-Plotting a 3D view of Revenue Generated and Expenditure with Loyality Revenue as depth element in order to determine how loyality revenue has played a role in the overall profit.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")


#Reading the File Containing Data (Here Cost Vs Profit)
	TotalLoyalityData<- ReadCSVFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Cost vs Profit.csv")


# Removal of Null Values from the data
	WithoutNA <- RemoveNAValues(TotalLoyalityData)


#Reading required columns out of the file
	ExpenditureIncurred <- ReadGeneralColumn (WithoutNA, 2)
	LoyalityRevenue <- ReadGeneralColumn (WithoutNA, 4)
	TotalRevenue <- ReadGeneralColumn (WithoutNA, 3)

#Summarizing the Read File in order to get a better idea of the values
	summary(WithoutNA)

#Pringing Read Columns in order to analyze their values to convert them into matrix form
	print(ExpenditureIncurred)
	print(TotalRevenue)
 	print(LoyalityRevenue)

#Combining All Values and Converted Them into Matrix
	AllCombined <- c(ExpenditureIncurred, TotalRevenue, LoyalityRevenue)
	print(AllCombined)
	MatrixForm <- matrix(AllCombined, nrow=10, ncol=3)

#Using 3D view to plot the result and analyzing the behavior
persp(MatrixForm, expand = 0.2, col="brown", shade=0.6, xlab="ExpenditureIncurred", ylab="TotalRevenue", zlab="LoyalityRevenue", main="Three-Dimensional View of Revenue and Expenditure with Loyality Revenue as Depth Element")


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------

#Objective #7:- Plotting of Standard Deviation of Loyalty Revenue from Mean with Quarter as a factor using Plotly (d3.js based library package).

#Installing Devtool and GitHub Package of plotly
	install.packages("devtools")
	devtools::install_github("ropensci/plotly")

#Import Plotly Library
	library(plotly)

#Set credentials for your plotly account
	set_credentials_file("mavericks", "azaijets3m")

#Reading of last 12 years of data
	TotalRevenue <- ReadGeneralColumn (WithoutNA, 3)
	NONLoyalityRevenue <- ReadGeneralColumn (WithoutNA, 5)
	AllCombined <- c(ExpenditureIncurred, TotalRevenue, NONLoyalityRevenue)
	YearlyProfitMatrix <- matrix(YearlyProfit, nrow=4, ncol=3)

#Formation of Data for plotly 3D plot
	FinalPlotData <- list(
		list(
			z = YearlyProfitMatrix, 
			x = YearlyExpenditure , 
			y = YearlyRevenue, 
			type = "surface"
		)
	)


#Plotly Command to Plot 3D view	
	response <- py$plotly(FinalPlotData, kwargs=list(filename="3D surface", fileopt="overwrite"))
	
#URL where the plot is directed
	url <- response$url  # returns plot URL
	
#Command to get the url
	O/P:- https://plot.ly/~mavericks/41


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------

#Objective #8:-Plotting of Correlation between Quarterly Expenditure and Quarterly Profit using
#Plotly Library.

#Reading The File Containing All Functions
	source("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/R Files/ReadOperations.R")

#Reading the File Containing Data (Here Cost Vs Profit)
	TotalLoyalityData<- ReadCSVFile("C:/Users/Kapil.2.Sharma/Desktop/Hackathon 2015/TechCon2015/Files With NA Values/Cost vs Profit.csv")


#Removal of Null Values from the data
	WithoutNA <- RemoveNAValues(TotalLoyalityData)

#Reading values Quarterly Basis for analysis
	#Expenditure Values
	FirstQuarter_ExpenditureIncurred <- ReadQuarterColumn (WithoutNA, 1:3, 2)
	SecondQuarter_ExpenditureIncurred <- ReadQuarterColumn (WithoutNA, 4:6, 2)
	ThirdQuarter_ExpenditureIncurred <- ReadQuarterColumn (WithoutNA, 7:9, 2)
	ThirdQuarter_ExpenditureIncurred <- ReadQuarterColumn (WithoutNA, 10:12, 2)
	
	#Profit Values
	FirstQuarter_Profit <- ReadQuarterColumn (WithoutNA, 1:3, 6)
	SecondQuarter_Profit <- ReadQuarterColumn (WithoutNA, 4:6, 6)
	ThirdQuarter_Profit <- ReadQuarterColumn (WithoutNA, 7:9, 6)
	FourthQuarter_Profit <- ReadQuarterColumn (WithoutNA, 10:12, 6)
	
#Importing of Plotly Library and Initialization of py function
	library(plotly)
	py <- plotly(username="mavericks", key="azaijets3m")

#Formatting of Data According to our requirement
	
	#Q1 values
	trace1 <- list(
		x = FirstQuarter_ExpenditureIncurred , 
		y = FirstQuarter_Profit, 
	type = "scatter"
	)

	#Q2 values
	trace2 <- list(
		x = SecondQuarter_ExpenditureIncurred, 
		y = SecondQuarter_Profit, 
		xaxis = "x2", 
		yaxis = "y2", 
		type = "scatter"
	)

	#Q3 values
	trace3 <- list(
		x = ThirdQuarter_ExpenditureIncurred, 
		y = ThirdQuarter_Profit, 
		xaxis = "x3", 
		yaxis = "y3", 
		type = "scatter"
	)

	#Q4 values
	trace4 <- list(
		x = FourthQuarter_ExpenditureIncurred , 
		y = FourthQuarter_Profit, 
		xaxis = "x4", 
		yaxis = "y4", 
		type = "scatter"
	)

	data <- list(trace1, trace2, trace3, trace4)
		layout <- list(
		xaxis = list(domain = c(0, 0.45)), 
		yaxis = list(domain = c(0, 0.45)), 
		xaxis4 = list(
		domain = c(0.55, 1), 
		anchor = "y4"
	), 
	
	xaxis3 = list(
		domain = c(0, 0.45), 
		anchor = "y3"
	), 
  
	xaxis2 = list(domain = c(0.55, 1)), 
		yaxis2 = list(
		domain = c(0, 0.45), 
		anchor = "x2"
	), 
  
	yaxis3 = list(domain = c(0.55, 1)), 
	
	yaxis4 = list(
		domain = c(0.55, 1), 
		anchor = "x4"
	)
)

#Directing the plot to plotly and generating URL
	response <- py$plotly(data, kwargs=list(layout=layout, filename="multiple-subplots", fileopt="overwrite"))
	url <- response$url

#Getting Generated URL
	url
	O/P:- https://plot.ly/~mavericks/58


#-----------------------------------------------------------BREAK-----------------------------------------------------------------------------------------------
