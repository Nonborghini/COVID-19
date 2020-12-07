library(ggplot2)
library(dplyr)

cases_total <- read.table("./data/cases_total.csv",header = TRUE,sep = "\t")
#death_total <- read.table("./data/death_total.csv",header=TRUE,sep="\t")
names(cases_total)[1] = 'date'
names(cases_total)[2] = 'in_hospital_patient'
cases_total$date <- as.Date(cases_total$date)
ggplot(cases_total,aes(x=date,y=in_hospital_patient,fill=date)) + geom_bar(stat='identity')
