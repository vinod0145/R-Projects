# Scatters plot correlation between hits and kills

cod[,c("hits","kills")]
plot(x = cod$hits,y = cod$kills,
     xlab = "hits",
     ylab = "kills",
     xlim = c(0,2000),
     ylim = c(0,2000),		 
     main = "hits vs kills")


#Correlation Matrix

Square=cor(cod)
View(cod)
fig4=ggcorrplot(Square,colors = c("blue", "red", "pink"))
fig4

###Upper Half Circle Matrix
fig1=ggcorrplot(cod,type="upper",method="circle")
fig1

### Lower Half Circle Matrix

fig1=ggcorrplot(cod,type="lower",method="circle")
fig1

#ranking

fig5=ggplot(cod,aes(x=level))+geom_bar()
fig5

### Ranking In Bar format

bar <- cbind.data.frame(cod$wins,player)
player <-data.frame(c("player A", "player B","player C","player D","player E","player F","player G","player H","player I","player J","player K","player L","player M","player N","player O","player P"
                      ,"player Q","player R","player S" ))
colnames(bar) <-c("wins","players")
bar %>%  ggplot(aes(x=wins,y=players))+
  geom_col()

###Density graph of COD
fig1=ggplot(cod,aes(x=losses))+geom_density()
fig1


#Distribution

# 1. Histogram

hist(cod$wins)


# 2. Boxplot
fig1=ggplot(cod_2,aes(x=symbol,y=wins))+geom_boxplot(fill="blue")+coord_flip()
fig1
  #[KDR:Kill Death ratio]

### PieChart

PieChart(wins, data = cod, hole=0)    




