
# Required Packages and functions
library(shiny)
library(shinyjs)
library(shinyFiles)
library(rsconnect)
library(reshape2)
require(plyr)
library(dplyr)
library(DT)
library(data.table)
library(ggplot2)
library(ggthemes)
library(scales)
library(googleVis)
library(rvest)
library(xml2)
library(XML)
library(plotly)
library(DT)
library(tidyr)

# CSS switch
mycss = 'Flatly.css'

source("ETL.R")

#load(file = "data/all.RData")
#Calculations - will go to ETL eventually
#players <- proj$player %>% unique


