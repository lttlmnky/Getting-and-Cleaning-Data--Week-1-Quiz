##  The American Community Survey distributes downloadable data about United States communities.
##  Download the 2006 microdata survey about housing for the state of Idaho using download.file() from here
## "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
##  and load the data into R. The code book, describing the variable names is here:
## "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
##  How many properties are worth $1,000,000 or more?
##  Housing survey of state of Idaho- Week 1 assignment. Aim: To find number of properties worth $1,000,000 or more using micro data
##############################################################################

## Download the file on Desktop using download.file() 
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileurl, destfile = "/Users/praju/Desktop/Week1Quiz.csv", method = "curl")
# Read csv file and assign it to a variable.
rf <- read.csv("Week1Quiz.csv")
# Selecting property column with title "VAL" using select () and assigning is to a variable.
R <- select(A, VAL)
# Selecting rows with value 24 i.e property is worth $1,000,000 or more as mentioned in code book.
S <- filter(R, VAL == 24)
# Use dim() to check number of rows with a value 24
dim(S)
## Answer: 53 rows.i.e 53 properties are worth $1,000,000 or more.
