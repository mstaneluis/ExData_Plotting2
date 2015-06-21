
# Download archive file, if it does not exist
workfile <- "NEI_data.zip"
if(!file.exists(workfile)) {
	archiveURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
	download.file(url=archiveURL,destfile=workfile,method="curl")
}
if(!(file.exists("summarySCC_PM25.rds") && 
	file.exists("Source_Classification_Code.rds"))) { unzip(workfile) }
