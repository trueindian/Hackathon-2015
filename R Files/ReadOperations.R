# Reading of Text files (can read any Text File)
ReadTextFile <- function (FilePath){

	#Text_File <- read.table ("C:/Users/student/Desktop/R Stuff/Data Sets With Nulls/Passenger Traffic.txt", sep = "\t", header = TRUE)
	Text_File <- read.table (FilePath, sep = " ", header = TRUE)
	#return (Text_File)
}


# Reading of CSV Files (can read any CSV Files)
ReadCSVFile <- function(FilePath){

	CSV_File <- read.csv(FilePath, sep=",", header =TRUE)
}

# General Function to Remove NA Values from Files
RemoveNAValues <- function (FileToComplete){

	Complete_Data <- 	FileToComplete[complete.cases(FileToComplete), ]
	# Complete_data <- na.omit(FileToComplete)

}

# Reading of Columns of Files
ReadGeneralColumn <- function (FileName, ColumnNumber){

	ColumnData <- FileName[ , ColumnNumber]

}

# Reading of Columns of Files (Needs to be verified)
ReadQuarterColumn <- function (FileName, Range, ColumnNumber){

	QuartileColumnData <- FileName[Range, ColumnNumber]

}