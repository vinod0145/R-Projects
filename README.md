# R-Projects
Dataframe: A data frame is a table or a two-dimensional array-like structure in which each column contains values of one variable and each row contains one set of values from each column.
The Dataframe which I have used in this CA is of  call of duty (COD) game play which I named as “COD”.
Scatter Plot: Scatterplots show many points plotted in the Cartesian plane. Each point represents the values of two variables. One variable is chosen in the horizontal axis and another in the vertical axis.

 ScatterPlot  which represent the correlation between hits and kills in the dataframe name “cod”.


Code of Scatter:
cod[,c("hits","kills")]
plot(x = cod$hits,y = cod$kills,
     xlab = "hits",
     ylab = "kills",
     xlim = c(0,2000),
     ylim = c(0,2000),		 
     main = "hits vs kills")
Interpretation:  This Scatter plot shows the relation between two variables “hits” and “kills” which belongs to data frame cod.
Correlation: Correlation refers to the relationship between two variables. It refers to the degree of linear correlation between any two random variables.
Correlation matrix : Correlation Matrices compute the linear relationship degree between a set of random variables, taking one pair at a time and performing for each set of pairs within the data.

Interpretation: this co relation matrix shows the corelation  between all the column of data frame cod and it shows the same relationship in diagonal as according to data frame.

Code of Correlation Matrix: 
Square=cor(cod)
View(cod)
fig4=ggcorrplot(cod,colors = c("blue", "red", "pink"))
fig4

Upper Half Circle Matrix:
fig1=ggcorrplot(cod,type="upper",method="circle")
fig1

Lower Half Circle Matrix:
fig1=ggcorrplot(cod,type="lower",method="circle")
fig1

Ranking : Ranking refers to arrangement of any column in ascending or descending order. 

Code of Ranking:
fig5=ggplot(cod,aes(x=level))+geom_bar()
fig5
Interpretation: 
Code for Ascending and descending order  :    bar <- cbind.data.frame(cod$wins,player)
player <-data.frame(c("player A", "player B","player C","player D","player E","player F","player G","player H","player I","player J","player K","player L","player M","player N","player O","player P"
                      ,"player Q","player R","player S" ))
colnames(bar) <-c("wins","players")
bar %>%  ggplot(aes(x=wins,y=players))+
  geom_col()
Distribution:
1.Histogram: A histogram represents the frequencies of values of a variable bucketed into ranges. Histogram is similar to bar chat but the difference is it groups the values into continuous ranges. Each bar in histogram represents the height of the number of values present in that range.

Code of histogram: code of column Level in COD Dataframe
hist(cod$level)
Density:
Density graph of COD
fig1=ggplot(cod,aes(x=losses))+geom_density()
fig1

2.Boxplot: Boxplots are a measure of how well distributed is the data in a data set. It divides the data set into three quartiles. This graph represents the minimum, maximum, median, first quartile and third quartile in the data set. It is also useful in comparing the distribution of data across data sets by drawing boxplots for each of them.


Code of Blogspot: 
boxplot(hits ~ kills, data =cod, xlab = "Number of Kills",
        ylab = "Number of Hits", main = "KDR")  #[KDR:Kill Death ratio]
Interpretation: 
PieChart:

Zoom Image of Piechart
 
Code of Piechart:
PieChart(wins, data = cod, hole=0)
Interpretation: This pie data shows the relationship between the wins which every player get in his match.
