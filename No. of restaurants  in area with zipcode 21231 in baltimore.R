##  Read the XML data on Baltimore restaurants from here:
## "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
##  How many restaurants have zipcode 21231?
############################################################################

fileurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(fileurl, useInternalNodes = TRUE )
rootnode <- xmlRoot(doc)
Zipcode_info <- xpathSApply(rootnode, "//zipcode", xmlValue)
mylist <- Zipcode_info[ Zipcode_info == 21231]
length(mylist)

## Answer: 127 restaurants have zipcode 21231



