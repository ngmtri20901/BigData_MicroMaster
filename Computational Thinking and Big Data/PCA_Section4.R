library(ggplot2)
library(tidyverse)
library(dplyr)
small_data <- data.frame( 
  X = c(1,1,-1,1),
  Y = c(1,-1,1,1),
  Z = c(1,1,1,-1)) 
small_data
ggplot(small_data,mapping = aes(Z,Y)) +
  geom_point()

matrixP <- data.frame( 
  X = c(0,0,2,-2),
  Y = c(0,-2,2,0),
  Z = c(3,1,1,1))
ggplot(matrixP,mapping = aes(X,Y)) +
  geom_point()
