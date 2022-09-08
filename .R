setwd("C:/Users/alsdu/Downloads/")

require(data.table)
require(dplyr)
require(magrittr)

dt2021 = read.csv("dt2021.csv", fileEncoding="euc-kr")
dt2022 = read.csv("dt2022.csv", fileEncoding="euc-kr")
new = fread("new.csv")

new$time %>% str
dt2021 %>% head
dt2022 %>% head


dt2021 %>% filter(month==6) -> dt202106
dt2021 %>% filter(month==7) -> dt202107
dt2022 %>% filter(month==6) -> dt202206

dt202106$강수 %>% mean
dt202206$강수 %>% mean

dt2021 %>% head
dt202106$기온 %>% mean
dt202206$기온 %>% mean




which(new[,time=="2021-06-15"])


which(new[,time=="2022-06-01"])

which(new[,time=="2022-06-15"])
which(new[,time=="2022-07-01"])
new[84,]

(76+92)/2

slice(new, 1:15)

slice(new, )



# which( new[, 강수 == max(강수)] ) 
new[ which( new[, 강수 == max(강수)] )   ,]



dt202206$강수

slice(new, 62:nrow(new)) -> a2022

a2022 %>% head(30)
###############################################################
S1 = which(new[,time=="2021-06-23"])
E1 = which(new[,time=="2021-07-01"])
window1 = slice(new, S1:E1)

S2 = which(new[,time=="2022-06-23"])
E2 = which(new[,time=="2022-07-01"])
window2 = slice(new, S2:E2)


lapply(window1[,5:8], mean)
lapply(window2[,5:8], mean)