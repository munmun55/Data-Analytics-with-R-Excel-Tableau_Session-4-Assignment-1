# Assignment 4.1


# 1. For the given data frames and tables perform the following operations:

df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))

df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))

df1 #left table
df2 #right table

#Return only the rows in which the left table have match

Left_table <- merge(df1, df2 , by = "CustId")
Left_table

#Return all rows from both tables, join records from the left 
#which have matching keys in the right table.
total <- merge(df1, df2, all = TRUE)
total

#Return all rows from the left table, and any rows with matching keys
#from the right table.
row_left_table <- merge(df1, df2, by = "CustId",all.x = TRUE)
row_left_table

#Return all rows from the right table, and any rows with matching keys
#from the left table.
row_right_table <- merge(df1, df2, by = "CustId",all.y = TRUE)
row_right_table


# 2
library("dplyr")
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))

df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))

df1 #left table
df2 #right table

# Return a long format of the datasets without matching key.

dfj<-merge(x=df1,y=df2,by="CustId",all=FALSE)
dfj

#or

dfx<-merge(df1, df2, by="CustId", all=TRUE)
dfx$CustId <- NULL
dfx

# Keep only observations in df1 that match in df2.
semi_join(df1, df2,by="CustId")

# Drop  all observations in df1 that match in df2.
anti_join(df1,df2,by="CustId")













