library(tidyverse)
library(ggplot2)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity" , color = "red") +
  coord_flip()

ggsave("C:/Users/htama/figs/barplot.png")

