library(tidyverse)
murders <-  read_csv("data/murders.csv")
murders <- murders %>% 
  mutate(region = factor(region),
         rate = total / population * 1e6) 
save(murders, file = "rds/murders.rda")  
  
