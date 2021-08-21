library(statsr)
library(dplyr)
library(ggplot2)

nycflights <- nycflights

SFO_feb <- filter(nycflights, dest %in% c("SFO") & month == 2)
dim(SFO_feb)
hist(SFO_feb$arr_delay)

nycflights %>%
  mutate(arr_type = ifelse(arr_delay <= 0, "on time", "delayed")) %>%
  mutate(dep_type = ifelse(dep_delay <= 5, "on time", "delayed")) %>%
  select(arr_type, dep_type) %>%
  table()
