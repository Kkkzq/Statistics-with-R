setwd("D:/个人资料/UU/课程材料/R-coursera")
library(statsr)

arbuthnot <- read.csv("arbuthnot.csv")
plot(arbuthnot$year, arbuthnot$girls)

present <- present
present[,4] <- present[,2]+ present[,3]
present[,5] <- present$boys >= present$girls
prep <- as.data.frame(table(present$...5))
max(present[,4])
