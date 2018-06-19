# ETL
#Read in data
proj <- read.csv(file = "data/2017proj.csv")
board <- read.csv(file = "data/draftboard.csv")

players <- proj$player %>% unique



#save(proj,board, file = 'data/all.RData')