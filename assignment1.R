library(tidyverse)

getwd()

asl <- read_csv("/Users/katiekobayashi/Google Drive/Academics/UCSC_EEB/bioe_295/salmon-size-decline/data/ASL_merged.csv")

#command_shift_m makes the PIPE!
%>% 

asl
View(asl)

asl %>% count(District)

asl %>% count(District) %>% View

