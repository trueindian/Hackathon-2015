# Command to link R script with console
	source("C:/Users/student/Desktop/R Stuff/R Files/ReadOperations.R")

#Command to Read First Text File
	PassengerDetails <- ReadTextFile("C:/Users/student/Desktop/R Stuff/Data Sets With Nulls/Passenger Traffic.txt")

#Command to Read Second Text File
	LoyalityAvailingMembers <- ReadTextFile("C:/Users/student/Desktop/R Stuff/Data Sets With Nulls/Loyality Members Availing Facility.txt")

#Command to Read First CSV File
	TotalLoyalityData <- ReadCSVFile("C:/Users/student/Desktop/R Stuff/Data Sets With Nulls/Total Loaylity Members.csv")

#Command to Read Second CSV File
	RevenueData <- ReadCSVFile("C:/Users/student/Desktop/R Stuff/Data Sets With Nulls/Cost Vs Profit.csv")

#Commands to Get Files with NA values removed
	
	#Passenger Details
	FinalPassengerData <- RemoveNAValues(PassengerDetails)

	#Total Loyality Members
	FinalLoyalityData <- RemoveNAValues(TotalLoyalityData)

	#Cost Vs Profit
	FinalRevenueData <- RemoveNAValues(RevenueData)
 
 
#Commands to Read Columns of Passenger Details File
	OverallTraffic <- ReadGeneralColumn (PassengerDetails, 2)
	
	PassengersUsingVAFlights <- ReadGeneralColumn (PassengerDetails, 3)
	
	PassengersUsingNONVAFlights <- ReadGeneralColumn (PassengerDetails, 4)
	
	
#Commands to Read Columns of Total Loyality Members File

	LoyalityMembers <- ReadGeneralColumn (TotalLoyalityData, 3)
	
	NonLoyalityMembers <- ReadGeneralColumn (TotalLoyalityData, 4)
	
	
#Commands to Read Columns of Loyality Members Availing Facility File

	LoyalityAvailingCustomers <- ReadGeneralColumn (LoyalityAvailingMembers, 3)
	
	NonLoyalityAvailingCustomers <- ReadGeneralColumn (LoyalityAvailingMembers, 4)
	
#Commands to Read Columns of Cost Vs Profit File
	ExpenditureIncurred <- ReadGeneralColumn (RevenueData, 2)
	
	TotalRevenue <- ReadGeneralColumn (RevenueData, 3)
	
	LoyalityRevenue <- ReadGeneralColumn (RevenueData, 4)
	
	NONLoyalityRevenue <- ReadGeneralColumn (RevenueData, 5)
	
	Profit <- ReadGeneralColumn (RevenueData, 6)
	
	
#Commands to Read Quartile Data of Passenger Details File
	
	FirstQuarter_OverallTraffic <- ReadQuarterColumn (PassengerDetails, 1:3, 2)
	SecondQuarter_OverallTraffic <- ReadQuarterColumn (PassengerDetails, 4:6, 2)
	ThirdQuarter_OverallTraffic <- ReadQuarterColumn (PassengerDetails, 7:9, 2)
	FourthQuarter_OverallTraffic <- ReadQuarterColumn (PassengerDetails, 10:12, 2)
	
	
	FirstQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 1:3, 3)
	SecondQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 4:6, 3)
	ThirdQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 7:9, 3)
	FourthQuarter_PassengersUsingVAFlights <- ReadQuarterColumn (PassengerDetails, 10:12, 3)
	
	FirstQuarter_PassengersUsingNONVAFlights <- ReadQuarterColumn (PassengerDetails, 1:3, 4)
	SecondQuarter_PassengersUsingNONVAFlights <- ReadQuarterColumn (PassengerDetails, 4:6, 4)
	ThirdQuarter_PassengersUsingNONVAFlights <- ReadQuarterColumn (PassengerDetails, 7:9, 4)
	FourthQuarter_PassengersUsingNONVAFlights <- ReadQuarterColumn (PassengerDetails, 10:12, 4)
	
	
#Commands to Read Quartile Data of Total Loyality Members File
	
	FirstQuarter_LoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 1:3, 3)
	SecondQuarter_LoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 4:6, 3)
	ThirdQuarter_LoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 7:9, 3)
	ThirdQuarter_LoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 10:12, 3)
	
	
	FirstQuarter_NonLoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 1:3, 4)
	SecondQuarter_NonLoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 4:6, 4)
	ThirdQuarter_NonLoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 7:9, 4)
	ThirdQuarter_NonLoyalityMembers <- ReadQuarterColumn (TotalLoyalityData, 10:12, 4)
	
#Commands to Read Quartile Data of Loyality Members Availing Facility File
	
	FirstQuarter_LoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 1:3, 3)
	SecondQuarter_LoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 4:6, 3)
	ThirdQuarter_LoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 7:9, 3)
	ThirdQuarter_LoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 10:12, 3)
	
	FirstQuarter_NonLoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 1:3, 4)
	SecondQuarter_NonLoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 4:6, 4)
	ThirdQuarter_NonLoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 7:9, 4)
	ThirdQuarter_NonLoyalityAvailingCustomers <- ReadQuarterColumn (LoyalityAvailingMembers, 10:12 4)
	
	

#Commands to Read Quartile Data  of Cost Vs Profit File
	
	FirstQuarter_ExpenditureIncurred <- ReadQuarterColumn (RevenueData, 1:3, 2)
	SecondQuarter_ExpenditureIncurred <- ReadQuarterColumn (RevenueData, 4:6, 2)
	ThirdQuarter_ExpenditureIncurred <- ReadQuarterColumn (RevenueData, 7:9, 2)
	ThirdQuarter_ExpenditureIncurred <- ReadQuarterColumn (RevenueData, 10:12, 2)
	
	
	FirstQuarter_TotalRevenue <- ReadQuarterColumn (RevenueData, 1:3, 3)
	SecondQuarter_TotalRevenue <- ReadQuarterColumn (RevenueData, 4:6, 3)
	ThirdQuarter_TotalRevenue <- ReadQuarterColumn (RevenueData, 7:9, 3)
	ThirdQuarter_TotalRevenue <- ReadQuarterColumn (RevenueData, 10:12, 3)
	
	
	FirstQuarter_LoyalityRevenue <- ReadQuarterColumn (RevenueData, 1:3, 4)
	SecondQuarter_LoyalityRevenue <- ReadQuarterColumn (RevenueData, 4:6, 4)
	ThirdQuarter_LoyalityRevenue <- ReadQuarterColumn (RevenueData, 7:9, 4)
	ThirdQuarter_LoyalityRevenue <- ReadQuarterColumn (RevenueData, 10:12, 4)
	
	FirstQuarter_NonLoyalityRevenue <- ReadQuarterColumn (RevenueData, 1:3, 5)
	SecondQuarter_NonLoyalityRevenue <- ReadQuarterColumn (RevenueData, 4:6, 5)
	ThirdQuarter_NonLoyalityRevenue <- ReadQuarterColumn (RevenueData, 7:9, 5)
	ThirdQuarter_NonLoyalityRevenue <- ReadQuarterColumn (RevenueData, 10:12, 5)
	
	FirstQuarter_Profit <- ReadQuarterColumn (RevenueData, 1:3, 6)
	SecondQuarter_Profit <- ReadQuarterColumn (RevenueData, 4:6, 6)
	ThirdQuarter_Profit <- ReadQuarterColumn (RevenueData, 7:9, 6)
	FourthQuarter_Profit <- ReadQuarterColumn (RevenueData, 10:12, 6)
	


#-------------------------------------------------------------------------------------------


