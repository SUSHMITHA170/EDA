---
  title: "R COMMANDS"
author: "Sushmitha_Varsha"
date: "26-06-2022"
output:
  pdf_document: default
word_document: default
html_document: default
---
  
  Load the stock data
```{r}
stock<-read.csv("indexData.csv")
```
Help command
```{r}
?(mean)
```
Loading Packages
```{r}
library(dplyr, quietly = TRUE)
```

To see what packages are loaded and ready for use
```{r}
search()
```

Get the structure of the data frame.
```{r}
class(stock)
str(stock)
```

To give a
quick statistical summary of data objects. 
```{r}
summary(stock)
```
Structure of dataframe, str() commands is used to examine the structure of the object. also gives the number of observations and number of variables along with data types.

```{r}
str(stock);
```
class() command is used to obtain information about the type of object.


```{r}
class(stock); 
```
Converting data frame to list
```{r}
frame.list = as.list(stock)
frame.list
```

```{r}
summary(stock)
```
Here,  Index is Character, as.factor() command converts character to factor data type. and stores in temp object.
```{r}
temp<-as.factor(stock$Index)
temp
```

Prints the first column in stock object.
```{r}
stock[2]
```
Prints the thrid column in stock object.
```{r}
stock[1:3]; 
```
Prints the first three columns of dataframe stock.
```{r}
stock[-1]; 
```
Prints all columns except first column of stock dataframe.
```{r}
stock[c(1,3,4,8)]; 
```
Prints only the selected columns and all rows in stock dataframe.
```{r}
stock[stock>"50096"]; 

```
To find the length of the stock dataframe
```{r}
length(stock); 
```
Extract first two rows.
```{r}
result<-stock[1:2,]
print(result)
```
Prints the maximum value in column Index in stock dataframe.
```{r}
max(stock$Index)
```
Prints the minimum value in column index in stock dataframe.
```{r}
min(stock$Index)
```

Prints total columns in dataframe stock.
```{r}
stock[(length(stock)-2):length(stock)];
```
The seq R function generates a sequence of numeric values.
```{r}
stock[seq(1,length(stock),5)]; 
```
Sort function returns the results sorted in ascending order
```{r}
sort(stock$Date); 
```

```{r}
sort(stock$Adj.Close); 
```
Order function in R returns the position of each element of its input in ascending or descending order.
```{r}
order(stock$Close); 
```
Rank function will return a dataframe providing the rank of each element within a dataframe.
```{r}
rank(stock$Close); 
```
Only the specified rows and all columns except fourth column will be printed.

```{r}
stock[c(1,3,5,7),-4]; 
```
Here the column name is specified as "Close", only that column's specified rows will be printed.

```{r}
  stock[c(1,3,5,7),"Close"];
```
all rows of column three will be printed.
```{r}
  stock[3]; 
```
All column values of specified rows will be printed.

```{r}
  stock[c(1,100),]; 
```
we are using order function on Date column.
```{r}
  order(stock$Date,stock[,2]); 
```

The with function evaluates an R expression in an environment constructed based on data frame.
```{r}
  with(stock,order(stock$Date,stock$Close));
```
Prints all rows of Adj.close column.
```{r}
  stock$Adj.Close; 
```
prints all rows of Date column.
```{r}
  stock$Date; 

```
prints only the first four rows of High column.

```{r}
  stock$High[1:4]; 
```
prints all rows of Adj.close column.
```{r}
  stock[,"Adj.Close"]; 
```
shows all the libraries which are loaded to memory.
```{r}
  search(); 
```
the with function evaluates an R expression in an environment constructed based on data frame. prints all values in close column.

```{r}
  with(stock,close )
```
the with function evaluates an R expression in an environment constructed based on data frame. prints all values in date column.
```{r}
  with(stock,date); 
```
the head() function in R returns the first part of a vector,matrix,table,data frame or function that is passed to it as a parameter. generally, it returns first six values.
```{r}
head(stock)
```

the tail() function in R returns the last part of a vector,matrix,table,data frame or function that is passed to it as a parameter. generally, it returns last six values.
```{r}
tail(stock)
```
head() returns first part of data frame. generally, it returns first six rows. but, here we are externally specifing that first ten rows must be printed.
```{r}
head(stock,n=10);
```
gives all the column names of data frame value.
```{r}
names(stock)
```

gives only row names of data frame value.
```{r}
row.names(stock)
```
gives only column names of data frame value.
```{r}
colnames(stock)
```
gives both row and column names of data frame value.
```{r}
dimnames(stock)
```
here we are converting data frame to matrix and printing it.
```{r}
  value4.mat=as.matrix(stock);
value4.mat;
```
```{r}
  cummax(stock$close);
```
```{r}
  seq(along=stock);
```
```{r}
  seq_along(stock);
```
Loading library dplyr. and adding new column to the value data frame. we use mutate function to add new column.
```{r}
  library(dplyr);
stock %>% mutate(newcol=1);
```
```{r}
   value11<-as.factor(stock$Low);
value11
```

visualization of line graph.
```{r}
library(ggplot2);
ggplot(stock,aes(x=Low, y=High))+geom_line();
```
visualisation of points on line graph 
```{r}
library(ggplot2);
ggplot(stock,aes(x=High,y=Low))+geom_point();
```

visualisation of bar graph of values
```{r}
ggplot(stock,aes(x=High,y=Low))+geom_col();
```
visualization of bar graph of counts.
```{r}
ggplot(stock,aes(x=Low))+geom_bar();
```

visualization of points on line graph.
```{r}
ggplot(stock,aes(x=Low, y=High))+geom_line()+geom_point();
```


visualisation of bar graphs of Liked 
```{r}
library(ggplot2)
ggplot(stock,aes(x=Low))+geom_bar();
```
visuaalization of points 
```{r}
library(ggplot2);
ggplot(stock,aes(x=Low,y=High))+geom_point();
```
visualisation of line graph 
```{r}
library(ggplot2);
ggplot(stock,aes(x=Low,y=Close))+geom_point();
```
```{r}
   max(stock$Low); 
```
gives cummulative product values of Ladder.score column.
```{r}
  seq(along=stock);
```
```{r}
  seq_along(stock);
```
```{r}
  seq(from=1,to=10,by=2);
```
loading dplyr library and adding new column to the re datframe . we use mutate function to add new column 
```{r}
library(dplyr);
stock %>% mutate(newcol=1);
```
for reodering we use select function . here we are selecting Liked to be first column and everything to be intact 
```{r}
stock %>% select(Low,everything());
```
selecting only value of Low having 528.690002
```{r}
stock %>% filter(Low==528.690002);
```
renaming the existing column name. for that we use rename function 
```{r}
stock %>% rename(DOB=Date);
```
gives cummulative product values of Low column 
```{r}
cumprod(stock$Low);
```

gives cummulative min of Low column 
```{r}
cummin(stock$Low);
```
gives cummulative max of Low column
```{r}
cummax(stock$Low);
```


gives cummulative sum of Low column 
```{r}
cumsum(stock$Low);
```


