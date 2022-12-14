library(rvest)
library(dplyr)
link='https://www.singular.net/blog/top-mobile-games/'
web=read_html(link)
gamename=web%>%html_nodes("table:nth-child(33) td:nth-child(2) span")%>%html_text()
View(gamename)
rank=web%>%html_nodes("table:nth-child(33) td:nth-child(1) span")%>%html_text()
View(rank)
score=web%>%html_nodes("table:nth-child(41) td~ td+ td span")%>%html_text()
View(score)
game=data.frame(gamename,rank,score)
View(game)
write.csv(game,'top 50 games list.csv')