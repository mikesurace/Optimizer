# ETL
#Read in data
proj <- read.csv(file = "data/2017proj.csv")
board <- read.csv(file = "data/draftboard.csv")
espn_data <- read.csv(file = "data/ESPN_Projections.csv")
fantasypros_data <- read.csv(file = "data/FantasyPros_Projections.csv")
fantasydata_data <- read.csv(file = "data/FantasyData_Projections.csv")

#Combine Projections
all_proj <- bind_rows(espn_data,fantasydata_data,fantasypros_data)
all_proj$espn_source <- ifelse(all_proj$Source == "ESPN",1,0)
all_proj$fantasydata_source <- ifelse(all_proj$Source == "FantasyData",1,0)
all_proj$fantasypro_source <- ifelse(all_proj$Source == "FantasyPros",1,0)

#test <- all_proj %>%
#          filter(espn_source == 1 & fantasydata_source == 1 & fantasypro_source == 0)

players <- proj$player %>% unique



#save(proj,board, file = 'data/all.RData')