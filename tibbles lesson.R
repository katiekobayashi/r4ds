##Go back and review tibbles
#What are the advantages to creating tibbles in R as opposed to reading in data from a CSV?
#Most of my data is collected in the field and then has to be entered into some sort of database/csv/etc.
#When would you want to enter your data directly into R?

library(tidyverse)

iris <- as_tibble(iris)

tibble(
  x = 1:5, 
  y = 1, 
  z = x ^ 2 + y
)

tb <- tibble(
  `:)` = "smile", 
  ` ` = "space",
  `2000` = "number"
)

tb

tribble(
  ~x, ~y, ~z,
  #--|--|----
  "a", 2, 3.6,
  "b", 1, 8.5
)


df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

df

df$x
df[["x"]]
df[[1]]
df[[2]]


mtcars
as_tibble(mtcars)

df <- data.frame(abc = 1, xyz = "a")
df$x
df[, "xyz"]
df[, c("abc", "xyz")]
df

df <- tibble(abc = 1, xyz = "a")
df$x
df[, "xyz"]
df[, c("abc", "xyz")]
df


####Exercises####

#1
mtcars
#you can tell that this is not a tibble because it has row names
#it also printed more than just 10 rows
as_tibble(mtcars)
as_tibble(mtcars) %>% View()
#don't forgit that View() has a capital "V"

#2

#as a data.frame:
df <- data.frame(abc = 1, xyz = "a")
df
df$x
#this pulled out the column xyx even though the column name is "xyz"
df[, "xyz"]
#this pulled out the exact same information as the command above
df[, c("abc", "xyz")]
#i don't understand what this is doing
class(df)
str(df)

#now trying to do the same thing as a tibble
df2 <- tibble(abc = 1, xyz = "a")
df2
#when i print this, it tells me what type of inputs i have, which is nice
df2$x
#gave me an error message because the column doesn't exist
df2[,"xyz"]
#i'm still kind of confused what's happening here it gave me a lot more info than df though
df2[["xyz"]]
#this gave me similar information to the df command 
df2[, c("abc", "xyz")]
#and I still have no idea what I'm supposed to be doing here