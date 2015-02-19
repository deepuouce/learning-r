library(ggplot2); library(scales); library(grid); library(RColorBrewer)

# input file
df <- read.csv("~/R/sample_data.csv", header=T)

df

# basic histogram
ggplot(df, aes(size)) +
  geom_histogram(binwidth=1)


