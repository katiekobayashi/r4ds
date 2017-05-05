library(tidyverse)

diamonds <- read_csv("diamonds.csv")

read_csv("a,b,c
          1,2,3
          4,5,6")

confused <- read_csv("The first line of metadata
  The second line of metadata
         x,y,z
         1,2,3", skip = 2)



