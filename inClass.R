library(foreign)
library(dplyr)
library(tidyr)
library(data.table)
library(plyr)
a <- read.dbf("accid.DBF")
a <- a[, -c(3,5,14)]
head(a)
a <- a[, -2]
v <- read.dbf('viol.DBF')
head(v)

