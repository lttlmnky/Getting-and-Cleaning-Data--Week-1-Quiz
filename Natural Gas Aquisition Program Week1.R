## Download the Excel spreadsheet on Natural Gas Aquisition Program here:
## "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
## Read rows 18-23 and columns 7-15 into R and assign the result to a variable called:dat
## find value of sum(dat$Zip*dat$Ext,na.rm=T)
#######################################################################

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
df <- download.file(fileurl, destfile = "NGAP.xlsx", method = "curl")
dat <- read.xlsx("NGAP.xlsx", sheetIndex = 1, colIndex = 7:15, rowIndex = 18:23, header = TRUE)
print(dat)
total <- sum(dat$Zip*dat$Ext, na.rm = TRUE)
print(total)

## Answer : 36534720