## ---------------------------
## Assignment: Weeks 3&4 Exercise - Line charts and Step charts
##
## Author: Dhiraj Bankar
##
## Date Created: 2021-04-09
## ---------------------------


## set working directory

setwd("/Users/dhirajbankar/Coding 640/Weeks 3&4")    # My working directory

## ---------------------------

#Load in libraries
library(readxl)
library(ggplot2)
library(tidyverse)
library(scales)

#Read in file
wpop <- read_excel("world-population.xlsm")
wpop

#Create line chart
ggplot(wpop, aes(x = Year, y = Population))+
  geom_line(color = 'red')+
  labs(title = "World Population by Year", x = "Year", y = "Population")+
  scale_y_continuous(label=comma)
#Looked into better ways of displaying the y-axis as the numbers are so large, but wasn't able to find a suitable alternative

#Create step chart
x<-wpop$Year
y<-wpop$Population
ggplot()+
  geom_step(data = wpop, mapping= aes(x=x, y=y))+
  geom_step(mapping=aes(x=x, y=y), direction="vh", linetype=3)+
  labs(title = "World Population by Year", x = "Year", y = "Population")+
  scale_y_continuous(label=comma)

