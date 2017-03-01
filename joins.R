library(dplyr)
library(lubridate)

set.seed(17)

ID <- 1:10
Name <- c("Bob", "Jane", "Ramesh", "Sijia", "Bo", "Pierre", "Margaret", "Bruce", "Nanci", "Sean" )
Age <- sample(x = 25:40, size = 10, replace = TRUE)
Address <- c("Seattle", "LA", "Islamabad", "Xiamen", "Shanghai", "Montreal", "Mousehole", "Sydney", "St. Lunair", "Cork")
APbalance <- sample(x= 200:2000, size=10, replace=FALSE)

AP <- data.frame(ID,Name,Age,Address,APbalance)

OID <- c(102, 100, 101, 103)

d <- sample(3:10, size=4, replace = FALSE)
Date <- as.Date(d, origin="2017-01-01")
ID <- c(3,3,2,4)
OrderAmt <- c(3000, 1200, 1300, 2500)

Orders <- data.frame(OID, Date, ID, OrderAmt)

################################################################

inner_join(AP, Orders, by = "ID")

## Inner join returns rows when there is a match in both tables

inner_join(Orders, AP, by = "ID")


######################################################




left_join(AP, Orders, by = "ID")

# Left join returns all the rows from the left table
# even if there are no matches in the right table

left_join(Orders, AP, by = "ID")


#######################################################

right_join(Orders, AP, by = "ID")

## Right join returns all the rows from the right table
## even if there are no matches in the left table

right_join(AP, Orders, by = "ID")

########################################################

full_join(Orders, AP, by = "ID")

## full joint retains all values, all rows

full_join(AP, Orders, by = "ID")

####################################################

semi_join(AP, Orders, by ="ID")

## rows in AP that have a match in Orders

semi_join(Orders, AP, by ="ID")

## rows in Orders that have a match in AP

########################################
